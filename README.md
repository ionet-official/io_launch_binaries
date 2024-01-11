# IO-Net Official Binaries

This repository contains official binaries for the io.net - Follow the instructions below to set up and run the binaries on your respective operating system.

## Prerequisites

### For Linux
- Docker
- Nvidia drivers (In case of GPU Worker)
- Nvidia container toolkit (In case of GPU Worker)

### For Mac and Windows
- Docker Desktop
  - [Download Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/) - choose the mac - apple chip version for download
  - [Download Docker Desktop for Windows](https://www.docker.com/products/docker-desktop/) - choose the Windows version for download

- Nvidia Drivers (In case of GPU Worker on Windows) [Link](https://www.nvidia.com/download/index.aspx)

## Installation

### Linux

1. **Perform IO-Setup**
   - Install `wget`: 
     ```
     apt install wget
     ```
   - Download the setup script: 
     ```
     wget https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh
     ```
   - Run the script:
     ```
     chmod +x ionet-setup.sh && ./ionet-setup.sh
     ```

2. **For systems with GPUs**
   - Wait for a restart.
   - After restart, rerun the setup again with the command above.

3. **Download and launch binary**:
    ```
    wget https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_linux
    chmod +x launch_binary_linux
    ```

- Launch in interactive mode or copy the generated command from the website.
    ```
    ./launch_binary_linux
    ```


### Mac

1. **Install brew**:
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install wget**:
    ```
    brew install wget
    ```

3. **Download and launch binary**:
    ```
    wget https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_mac
    chmod +x launch_binary_mac
    ```

- Launch in interactive mode or copy the generated command from the website.
    ```
    ./launch_binary_mac
    ```

<!-- ### Windows

1. **Download binary**:
- Go to your browser and paste:
  ```
  wget https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_windows
  ```
- Double-click on the downloaded file and fill out the details in interactive mode. -->


## Support

For support, please open an issue or contact our support team on [discord](https://discord.gg/kqFzFK7fg2)
