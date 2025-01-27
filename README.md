# 🚀 IO-Net Official Binaries  

[![GitHub Repo stars](https://img.shields.io/github/stars/ionet-official/io_launch_binaries?logo=github&color=yellow)](https://github.com/ionet-official/io_launch_binaries/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/ionet-official/io_launch_binaries?logo=github&color=blue)](https://github.com/ionet-official/io_launch_binaries/network/members)
[![GitHub last commit](https://img.shields.io/github/last-commit/ionet-official/io_launch_binaries?logo=git)](https://github.com/ionet-official/io_launch_binaries/commits/main)
[![Discord](https://img.shields.io/discord/924442927399313448?logo=discord&color=5865F2)](https://discord.gg/kqFzFK7fg2)
[![Twitter](https://img.shields.io/twitter/follow/ionet_official?style=social)](https://x.com/ionet)
[![Website](https://img.shields.io/badge/Website-io.net-blue?style=flat&logo=google-chrome)](https://io.net)

##### **Latest Version:** `2.1.0`  
##### **Oldest Supported Version:** `2.1.0` (versions older than this are deprecated)  

This repository contains the **official binaries for IO-Net**.  
Follow the instructions below to **set up and run the binaries** on your respective operating system.

---

## ⚡ **Prerequisites**  

### ✅ **Linux**
- 🐳 **Docker**  
- 🎮 **Nvidia drivers** (Required for GPU Workers, `io-setup` will install automatically if missing)  
- 🔧 **Nvidia container toolkit** (Required for GPU Workers, `io-setup` will install automatically if missing)  

### ✅ **Mac**
- 🍏 **Docker Desktop**  
  - [📥 Download Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/)  
  - Select the **Mac - Apple Chip version**  

---

## 🛠 **Installation**  

### **Linux Setup**  

📌 **Step 1: Perform IO-Setup (one-time hardware setup)**  
_Skip this if Docker and Nvidia drivers are already installed._  

📥 **Download the setup script:**  

```bash
curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh  
```

⚙️ **Run the script:**  

```bash
chmod +x ionet-setup.sh && ./ionet-setup.sh  
```

❗ **If `curl` fails, install it manually:**  

```bash
sudo apt install curl  
```

🔁 **Step 2: GPU Systems**  
- 🔄 Restart your machine.  
- 🔧 After restart, **rerun the setup script** as shown above.  

---

## 🚀 **Downloading & Launching Binary**  

### **Linux**  
📥 **Download binary:**  

```bash
curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_linux -o io_net_launch_binary_linux  
```

```bash
chmod +x io_net_launch_binary_linux  
```

🎬 **Run in interactive mode:**  

```bash
./io_net_launch_binary_linux  
```

### **Mac**  
📥 **Download binary:**  

```bash
curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_mac -o io_net_launch_binary_mac  
```

```bash
chmod +x io_net_launch_binary_mac  
```

🎬 **Run in interactive mode:**  

```bash
 ./io_net_launch_binary_mac  
```

🔧 **Troubleshooting (Optional):**  
- ❗ If you see `bad CPU type in executable`, it means **you're running an Intel binary on Apple Silicon**.  
- 🛠️ Install **Rosetta 2** to enable compatibility:
  
```bash
softwareupdate --install-rosetta
```

- 🔄 After installation, rerun:

```bash 
./io_net_launch_binary_mac  
```
### **Windows**  
📥 **Download binary:**  
🔗 Open your browser and visit: **[Click here to download](https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_windows.exe)**  


🖥 **Run the downloaded file** in CMD. It will launch in **interactive mode**.

---

## 🖥 **Usage**  

### 🔹 **Interactive Mode**  
💡 Run the binary **without arguments** to get prompted for input.  

### 🔹 **Command-line Arguments**  
| Argument               | Type     | Description  |
|------------------------|----------|-------------|
| **`--device_name`**    | `string` | (Required) Name of the device |
| **`--device_id`**      | `string` | (Required) Device ID |
| **`--no_warnings`**    | `boolean` | Disable warnings for deleting existing/running containers |
| **`--no_cache`**       | `boolean` | Disable loading arguments from in-disk cache |
| **`--token`**         | `string` | User refresh token to enable silent authentication |
| **`--disable_sleep_mode`** | `boolean` | Disable sleep mode for the device |
| **`--docker_username`** | `string` | Docker login for Docker Hub |
| **`--docker_password`** | `string` | Docker password for Docker Hub |
| **`--ecc_enabled`**   | `boolean` | Keep ECC mode enabled for the device |

🛠 **Example usage:**  

```bash
./io_net_launch_binary_linux --device_name=my_device --device_id=1234 --no_warnings=true --no_cache=true  
```
---

## 🆘 **Support**  

For support, please **open an issue** or join our **community**:  

<p align="center">
  <a href="https://t.me/ionet_official">
    <img src="https://img.shields.io/badge/Telegram-26A5E4?logo=telegram&logoColor=white&style=for-the-badge" alt="Telegram">
  </a>
  <a href="https://discord.gg/kqFzFK7fg2">
    <img src="https://img.shields.io/badge/Discord-5865F2?logo=discord&logoColor=white&style=for-the-badge" alt="Discord">
  </a>
  <a href="https://x.com/ionet">
    <img src="https://img.shields.io/badge/Twitter-000000?logo=x&logoColor=white&style=for-the-badge" alt="Twitter (X)">
  </a>
</p>
