
---
author: "Marcus Vechiato"
title: "How to Get a Free FlightRadar24 Business Subscription with Your Own ADS-B Receiver"
date: "2025-04-12"
thumbnail: "/obsidian/Flightradar24-Logo-PNG2.png"
publish: true
tags: 
  - docker
  - homelab
  - aviation
  - ads-b
--- 

## ✈️ Why Monitor ADS-B Data?

Automatic Dependent Surveillance–Broadcast (ADS-B) is a surveillance technology used by aircraft to broadcast their position, speed, and other flight data in real time. Enthusiasts and aviation hobbyists around the world use software-defined radios (SDRs) to receive these signals — and contribute data to platforms like **[FlightRadar24](https://www.flightradar24.com/)**.

The best part? If you share your ADS-B data with FlightRadar24, they’ll reward you with a **free Business account subscription** (normally $499.99/year), which includes:

- Up to **3 years of flight history**
- Access to **weather layers**, **airspace boundaries**, and detailed **aircraft photos**
- A full-featured **web and mobile experience**
- **Premium customer support**
    

All you need is some basic hardware, a little technical setup, and a love for aviation data. Let's dive in.

---

## 🧰 What You Need (Prerequisites)

To get started with your own ADS-B monitoring setup, you'll need:

1. **RTL-SDR Dongle** – A USB device capable of receiving 1090 MHz signals from aircraft.
2. **Antenna** – Ideally one that’s placed high and unobstructed for best reception
3. **A Raspberry Pi or Linux Machine** – We'll be running our setup using Docker.
4. **Docker and Docker Compose** – Installed on your host machine.
5. **FlightRadar24 Account** – To get your unique sharing key (FR24KEY).
6. **Latitude and Longitude** – Your receiver’s exact location.
    

> Tip: If you don’t have an FR24 key yet, register your hardware at [fr24.com/share-your-data](https://www.flightradar24.com/share-your-data) and request one.

---

## 📦 Setup Overview

We're going to set up two services using Docker:

- **`readsb`**: Listens to ADS-B signals from your SDR and decodes them.
- **`fr24feed`**: Sends the decoded aircraft data to FlightRadar24.
    

---

## 📁 Create Your Project Folder

Open a terminal and run:

```bash
mkdir fr24 && cd fr24
touch .env docker-compose.yaml
```

---

## 📝 Configure `.env` File

Edit the `.env` file with your details:

```env
FR24KEY=your-fr24-key
LATITUDE=your-latitude
LONGITUDE=your-longitude
```

Make sure to replace those placeholders with your actual info.

---

## ⚙️ Docker Compose Setup

Paste this into your `docker-compose.yaml`:

```yaml
services:
  fr24feed:
    image: ghcr.io/sdr-enthusiasts/docker-flightradar24:latest
    container_name: fr24feed
    restart: always
    tty: true
    ports:
      - 8754:8754
    environment:
      - FR24KEY=${FR24KEY}
    depends_on:
      readsb:
        condition: service_healthy
    links:
      - readsb
    deploy:
      resources:
        limits:
          cpus: '1'
          memory: 256M

  readsb:
    image: ghcr.io/sdr-enthusiasts/docker-readsb-protobuf:latest
    container_name: readsb
    hostname: readsb
    restart: always
    tty: true
    devices:
      - /dev/bus/usb:/dev/bus/usb
    ports:
      - 8080:8080
      - 30005:30005
    environment:
      - TZ=Europe/London
      - READSB_DCFILTER=true
      - READSB_DEVICE_TYPE=rtlsdr
      - READSB_FIX=true
      - READSB_GAIN=autogain
      - READSB_LAT=${LATITUDE}
      - READSB_LON=${LONGITUDE}
      - READSB_MODEAC=true
      - READSB_RX_LOCATION_ACCURACY=2
      - READSB_STATS_RANGE=true
      - READSB_NET_ENABLE=true
    volumes:
      - readsbpb_rrd:/run/collectd
      - readsbpb_autogain:/run/autogain
      - /proc/diskstats:/proc/diskstats:ro
    tmpfs:
      - /run/readsb:size=64M
      - /var/log:size=32M
    deploy:
      resources:
        limits:
          cpus: '1'
          memory: 256M

volumes:
  readsbpb_rrd:
  readsbpb_autogain:
```

---

## 🖥️ What Each Service Does

### ✅ `readsb`

- **Purpose**: Captures and decodes signals from your RTL-SDR device.
    
- **Ports**:
    
    - `8080`: Web UI for live stats
    - `30005`: Feeds data to `fr24feed`
        
- **Key Environment Variables**:
    
    - `READSB_LAT`, `READSB_LON`: Your location
    - `READSB_GAIN=autogain`: Auto-optimized SDR signal gain
        

### ✅ `fr24feed`

- **Purpose**: Submits your decoded data to FlightRadar24
- **Port**: `8754` (Check your feed and receiver status here
- **Key Variable**: `FR24KEY`: Your personal sharing token
    

---

## 🚀 Start Your Setup

With everything configured, launch the containers:

```bash
docker compose up -d
```

Check the logs to confirm everything is running smoothly:

```bash
docker compose logs -f readsb
docker compose logs -f fr24feed
```

---

## 🔍 Web Interfaces

- **readsb UI**: [http://localhost:8080](http://localhost:8080) — Live aircraft and signal data
- **FR24 Feed Status**: [http://localhost:8754](http://localhost:8754) — Feed performance and stats
    

---

## 🧪 Bonus: Test Live Aircraft Feed

Want to peek inside the raw feed? Run:

```bash
docker exec -it readsb viewadsb
```

You'll see live aircraft data like this:

```
Hex     Flight   Alt    Spd  Lat      Long     RSSI  Msgs
4D2223  RYR59AR  40000  460  51.232   -0.980   -23.7   414
AB4C1D  DAL74    36000  527  51.639   -0.392   -34.6   218
```

---

## 🧠 Additional Resources

- [FlightRadar24 Data Sharing Guide](https://www.flightradar24.com/share-your-data)
- [Build a DIY Receiver (Official Guide)](https://www.flightradar24.com/build-your-own)
- [Docker-Readsb GitHub](https://github.com/sdr-enthusiasts/docker-readsb-protobuf)
- [Docker-Flightradar24 GitHub](https://github.com/sdr-enthusiasts/docker-flightradar24)
    

By following this guide, you can easily set up your own ADS-B monitoring station. Whether you're a hobbyist or an aviation enthusiast, this project is a great way to combine technology with a love for flight tracking. Happy monitoring!