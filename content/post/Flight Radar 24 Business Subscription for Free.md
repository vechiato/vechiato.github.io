
---
author: "Marcus Vechiato"
title: "Setting Up ADS-B Monitoring with Docker and FlightRadar24"
date: "2025-04-12"
thumbnail: "/obsidian/Flightradar24-Logo-PNG2.png"
publish: true
tags: 
  - docker
  - homelab
--- 

# Setting Up ADS-B Monitoring with Docker and FlightRadar24
![image](/obsidian/Flightradar24-Logo-PNG2.png)
ADS-B (Automatic Dependent Surveillance-Broadcast) monitoring allows aviation enthusiasts and hobbyists to track live aircraft data. FlightRadar24 (FR24) is a popular platform for this, and setting it up with Docker is efficient and straightforward. In this post, we’ll guide you through deploying an ADS-B monitoring setup using `docker-compose` and two key services: `fr24feed` and `readsb`.
![image](/obsidian/Logo_text_Flightradar24.png)
RTL-SDR (Radio Television Software Defined Radio) is a low-cost USB device originally designed for TV reception, but it's widely used by hobbyists and professionals to receive a wide range of radio signals using software-defined radio technology. It can tune into frequencies from about 500 kHz to 1.7 GHz, making it ideal for applications like weather satellite reception, radio astronomy, and aircraft tracking. One popular use is for receiving ADS-B (Automatic Dependent Surveillance–Broadcast) signals transmitted by aircraft. With RTL-SDR, users can decode these signals to track real-time flight information such as position, altitude, speed, and identification. This data can then be shared with online flight tracking networks like FlightAware or ADS-B Exchange, contributing to global aircraft monitoring.


---

## Why Monitor ADS-B Data?

ADS-B data provides real-time information about aircraft, including location, altitude, and speed. By running your own receiver, you contribute data to platforms like FlightRadar24 and enjoy access to premium features while supporting global flight tracking efforts.

---

## Prerequisites

Before we dive into the setup, ensure you have the following:

1. **RTL-SDR Device**: A USB software-defined radio receiver capable of receiving ADS-B signals.
2. **Docker and Docker Compose**: Installed on your host machine.
3. **FlightRadar24 Account**: To obtain your FR24 key.
4. **Location Coordinates**: Latitude and longitude of your receiver.

---

```bash creating the directory and files
mkdir fr24 
cd fr24 
touch .enc
touch docker-compose.yaml
```

## .env File Configuration

Create a `.env` file in the same directory as your `docker-compose.yaml` and add the following:

```env
FR24KEY=your-fr24-key
LATITUDE=your-latitude
LONGITUDE=your-longitude
```

Replace `your-fr24-key` with your FlightRadar24 key and set the `LATITUDE` and `LONGITUDE` to your receiver's location.

---

## Docker Compose Configuration

Below is the `docker-compose.yaml` configuration for running the `fr24feed` and `readsb` services. Copy and paste this into a file named `docker-compose.yaml`.

```yaml
services:
  fr24feed:
    image: ghcr.io/sdr-enthusiasts/docker-flightradar24:latest
    tty: true
    container_name: fr24feed
    restart: always
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
    tty: true
    container_name: readsb
    hostname: readsb
    restart: always
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

## Configuration Details

### `readsb`

- **Purpose**: Decodes ADS-B signals from your SDR device.
- **Environment Variables**:
    - `LATITUDE` and `LONGITUDE`: Your receiver's latitude and longitude (sourced from `.env`).
    - `READSB_GAIN`: Set to `autogain` for automatic adjustment.
- **Ports**:
    - `8088`: Web interface for signal statistics.
    - `30005`: Data stream for the `fr24feed` service.

### `fr24feed`

- **Purpose**: Sends the decoded ADS-B data to FlightRadar24.
- **Environment Variables**:
    - `FR24KEY`: Your unique FlightRadar24 key (sourced from `.env`).
- **Ports**:
    - `8754`: Local web interface for monitoring feed status.

---

## Steps to Deploy

1. **Connect the SDR Device**: Plug in your RTL-SDR device to the host machine.
2. **Start the Services**:
    
    ```bash
    docker compose up -d
    ```
    
3. **Verify the Setup**:
    - Visit `http://localhost:8754` to check the `fr24feed` status.
    - Visit `http://localhost:8080` for `readsb` statistics.
4. **Monitor Logs**:
    
    ```bash
    docker compose logs -f fr24feed
    ```
    
    ```bash
    docker compose logs -f readsb
    ```
    

---

test 

```
docker exec -it readsb viewadsb
```

```
 Hex    Mode  Sqwk  Flight   Alt    Spd  Hdg    Lat      Long   RSSI  Msgs  Ti /
────────────────────────────────────────────────────────────────────────────────
 4B1803 S                     5325  218   51                   -35.6     6  3
 010209 S     7516  MSR783    3325  164   90   51.476   -0.717 -28.9   289  0
 4D2223 S     5357  RYR59AR  40000  460    4   51.232   -0.980 -23.7   414  0
 39D2A3 S                                                      -42.6     2 11
 4D22D0 S     7475  HYP025   38575  496    6   51.612   -0.978 -34.3    48  0
 AB4C1D S     6312  DAL74    36000  527   73   51.639   -0.392 -34.6   218  3
 406C3A S     7650            8025  253  308                   -32.6   109  0
 407C6D S     6343  EXS8WJ   35000  422  144   51.211   -0.645 -21.1   304  0
 407573 S     6344  EZY62GA  29000  392  145   51.466   -0.652 -30.1   274  0
 3C65C2 S     2505  DLH900    4525  174  113   51.498   -0.807 -34.5   157  0
 407DC5 S     1465  VIR221    9025  282  286   51.430   -0.821 -28.5   201  1
 4075FE S     2753  BAW561L   8000  231  273   51.359   -0.592 -29.8   358  0
```


http://192.168.0.117:8080/ to see the map
http://192.168.0.117:8754/ 
http://192.168.0.117:8080/graphs/
https://www.flightradar24.com/blog/inside-flightradar24/how-to-get-a-flightradar24-business-subscription-for-free/
https://github.com/sdr-enthusiasts/docker-flightradar24/pkgs/container/docker-flightradar24

## Optimizations

- **Gain Adjustment**: Fine-tune the SDR gain setting to improve reception quality.
- **Device Placement**: Place the antenna in an open area, preferably near a window or outside.
- **System Resources**: Ensure the host has sufficient CPU and memory for smooth operation.

---

## Benefits of Running Your Own ADS-B Receiver

- **Contribute to FlightRadar24**: Share data and help enhance global coverage.
- **Access Premium Features**: Enjoy advanced tracking tools as a contributor.
- **Learn and Experiment**: Gain insights into aviation technology and ADS-B protocols.

---

By following this guide, you can easily set up your own ADS-B monitoring station. Whether you're a hobbyist or an aviation enthusiast, this project is a great way to combine technology with a love for flight tracking. Happy monitoring!