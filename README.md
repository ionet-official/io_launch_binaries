# IO-Net Official Binaries

This repository contains official binaries for the io.net - Follow the instructions below to set up and run the binaries on your respective operating system.

## Prerequisites

### For Linux
- Docker
- Nvidia drivers (In case of GPU Worker) (running io-setup will automatically install this if needed)
- Nvidia container toolkit (In case of GPU Worker) (running io-setup will automatically install this if needed)

### For Mac
- Docker Desktop
  - [Download Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/) - choose the mac - apple chip version for download

## Installation

### Linux

1. **Perform IO-Setup (one time for hardware)** (skip if docker and Nvidia drivers are already installed and configured)
   - Download the setup script: 
     ```
     curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh
     ```
   - Run the script:
     ```
     chmod +x ionet-setup.sh && ./ionet-setup.sh
     ```
    ##### Note - incase curl command fails: 
    - Install `curl`: 
         ```
         sudo apt install curl
         ```

2. **For systems with GPUs**
   - Wait for a restart.
   - After restart, rerun the setup again with the command above.

### Start the containers using binary

### Linux

3. **Download and launch binary**:
    ```
    curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_linux -o io_net_launch_binary_linux
    chmod +x io_net_launch_binary_linux
    ```

- Launch in interactive mode or copy the generated command from the website.
    ```
    ./io_net_launch_binary_linux
    ```


### Mac

- **Download and launch binary**:
    ```
    curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_mac -o io_net_launch_binary_mac
    chmod +x io_net_launch_binary_mac
    ```

- Launch in interactive mode or copy the generated command from the website.
    ```
    ./io_net_launch_binary_mac
    ```

- Trouble Shooting (Optional)

  - If you encounter an error message like `bad CPU type in executable`, it likely indicates that you are running software designed for an Intel processor on an Apple Silicon device. To resolve this issue, you'll need to install Rosetta 2, which enables support for Intel processors to run within Docker on Apple Silicon devices.
  
    ```
      softwareupdate --install-rosetta
    ```

  - After finished the Rosetta install, rerun the excute command again.
  
    ```
    ./io_net_launch_binary_mac
    ```

### Windows

1. **Download binary**:
- Go to your browser and paste:
  ```
  https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_windows.exe
  ```
- Open the downloaded file in the cmd and it will fill out the details in interactive mode.

## Usage
1. **Interactive Mode**: When you run the binary with no additional arguments, it will prompt you to enter the necessary details.


2. **Additional Arguments Mode**: You can also pass the arguments directly to the binary.
    - [required] `--device_name`: (string) The name of the device.
    - [required] `--device_id`: (string) The ID of the device.
    - [optional] `--user_id`: (string) The ID of the user.
    - [optional] `--operating_system`: (string) The operating system of the device.
    - [optional] `--no_warnings`: (boolean) Disable warnings of deleting existing and running containers.
    - [optional] `--no_cache`: (boolean) Disable loading arguments from in-disk cache of your device.
    - [optional] `--token`: (string) User refresh token to enable silent authentication.
- Example usage:
    ```
    ./io_net_launch_binary_linux --device_name=my_device --device_id=1234 --no_warnings=true --no_cache=true
    ```

- Note: The binary will cache the arguments on the disk for future use. If you DO NOT want to use cached arguments, you can pass the `--no_cache=true` argument.

## Support

For support, please open an issue or contact our support team on [discord](https://discord.gg/kqFzFK7fg2)
