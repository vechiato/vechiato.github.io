---
author: "Marcus Vechiato"
title: "How to Install and Test DeepSeek R1 Using Ollama"
date: "2025-01-28"
thumbnail: "/obsidian/code_club_thumb.jpeg"
publish: true
tags: 
  - llm
  - ollama
  - deepseek
  - homelab
--- 

DeepSeek R1 is a powerful AI model designed for advanced data analysis and insight extraction. Leveraging the simplicity and flexibility of Ollama, you can get DeepSeek R1 up and running in no time. This guide will walk you through the installation process and demonstrate how to test the model effectively.

---

# Prerequisites

Before diving into the setup, ensure you have the following:

1. **Ollama Installed**: Ollama is a platform for running AI models locally. [Download Ollama](https://ollama.com/download) and follow the installation instructions for your operating system.
2. **System Requirements**:
    - Minimum 16GB RAM
    - GPU (for optimal performance)
    - At least 10GB of free disk space

---

# Step 1: Install Ollama

If you haven’t installed Ollama yet, follow these steps:

1. **Download Ollama**:
    
    - Visit the [official Ollama website](https://ollama.com/download).
    - Choose the version suitable for your operating system (Windows, macOS, or Linux).
2. **Install the Application**:
    
    - Run the downloaded installer and follow the on-screen instructions.
    - Once installed, open Ollama to verify the setup.
3. **Command Line Interface (CLI)**:
    
    - Ollama includes a CLI for managing and running models. Open your terminal and type `ollama` to check if it’s installed correctly.

---

# Step 2: Download and Install DeepSeek R1

To use DeepSeek R1 with Ollama:

1. **Search for DeepSeek R1**:
    
    - Open the Ollama app or CLI.
    - Use the command:
        
        ```bash
        ollama list
        ```
        
        This will display available models.
2. **Install DeepSeek R1**:
    
    - Run the command:
        
        ```bash
        ollama pull deepseek-r1
        ```
        
    - The system will download the necessary files. This may take a few minutes depending on your internet speed.
3. **Verify Installation**:
    
    - After installation, confirm by running:
        
        ```bash
        ollama list
        ```
        
        Ensure `deepseek-r1` is listed among the installed models.

---

# Step 3: Test DeepSeek R1

Once installed, you can test DeepSeek R1 using the Ollama CLI or the web-based user interface (WebUI):

### Using the CLI

1. **Run the Model**:
    
    - Use the command:
        
        ```bash
        ollama run deepseek-r1
        ```
        
    - This will launch an interactive session where you can input queries.
2. **Example Queries**:
    
    - For data analysis:
        
        ```
        Analyze this dataset: [paste dataset here]
        ```
        
    - For insights:
        
        ```
        What are the key trends in this data?
        ```
        

## Using the WebUI

 **Benefits of the WebUI**:
    
    - User-friendly and intuitive interface.
    - Supports visualizing outputs and exploring data interactively.

[open-web ui github](https://github.com/open-webui/open-webui)

### Using Docker Compose for the WebUI

If you prefer to use Docker Compose to run the WebUI:

1. **Install Docker and Docker Compose**:
    
    - Ensure Docker is installed on your system. [Download Docker](https://www.docker.com/get-started).
    - Docker Compose is included with Docker Desktop. For Linux, install it separately if needed.
2. **Create a `docker-compose.yml` File**:
    
    - Create a new file named `docker-compose.yml` in your desired directory with the following content:
        
        ```yaml
		services:
		  ollama:
		    volumes:
		      - ollama:/root/.ollama
		    container_name: ollama
		    pull_policy: always
		    tty: true
		    restart: unless-stopped
		    image: ollama/ollama:latest
		
		  open-webui:
		    build:
		      context: .
		      args:
		        OLLAMA_BASE_URL: '/ollama'
		      dockerfile: Dockerfile
		    image: ghcr.io/open-webui/open-webui:latest
		    container_name: open-webui
		    volumes:
		      - open-webui:/app/backend/data
		    depends_on:
		      - ollama
		    ports:
		      - 3000:8080
		    environment:
		      - 'OLLAMA_BASE_URL=http://ollama:11434'
		      - 'WEBUI_SECRET_KEY='
		    extra_hosts:
		      - host.docker.internal:host-gateway
		    restart: unless-stopped
		
		volumes:
		  ollama: {}
		  open-webui: {}
        ```
        
    - This configuration pulls the latest Ollama image, maps port `3000` for the WebUI, and mounts a `data` directory for persistence.
3. **Run Docker Compose**:
    
    - Navigate to the directory containing your `docker-compose.yml` file and run:
        
        ```bash
        docker compose up
        ```
        
    - This starts the Ollama WebUI, accessible at `http://localhost:3000`.
4. **Interact with DeepSeek R1**:
    
    - Once the WebUI is running, access it through your browser (typically at `http://localhost:3000` or a similar local address).
    - Select DeepSeek R1 from the available models.
    - Input queries directly into the interface and view results in real-time.
5. **Stop the WebUI**:
    
    - To stop the service, press `Ctrl+C` or run:
        
        ```bash
        docker compose down
        ```
        

---

## Conclusion

With Ollama and DeepSeek R1, you have a robust setup for advanced data analysis. By following this guide, you’ve successfully installed and tested DeepSeek R1, ensuring it’s ready to tackle your analytical challenges. Start exploring its capabilities today using both the CLI and the WebUI, whether natively or through Docker Compose!