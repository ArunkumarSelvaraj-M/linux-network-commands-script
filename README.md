# Linux Network Commands Script

This repository contains a shell script that demonstrates essential Linux network commands along with their example outputs. It's designed to help Linux users, system administrators, and network engineers familiarize themselves with frequently used network tools.

## Features

- **Network Interface Information** (`ifconfig`, `ip addr`)
- **Routing Table Display** (`ip route`)
- **Connectivity Testing** (`ping`, `traceroute`)
- **Active Network Connections** (`netstat`, `ss`)
- **DNS Lookups** (`dig`, `nslookup`)
- **HTTP Requests** (`curl`, `wget`)
- **Port Scanning** (`nmap`)
- And many more.

## Getting Started

### Prerequisites

Ensure you have a Linux environment with the following tools installed:

- `ip`
- `ifconfig`
- `ping`
- `traceroute`
- `netstat` or `ss`
- `dig`
- `nslookup`
- `curl`
- `wget`
- `nmap`
- `whois`

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/ArunkumarSelvaraj-M/linux-network-commands-script.git
  ```

2. Navigate to the directory:

  ```bash
  cd linux-network-commands-script
  ```

3. Make the script executable:

  ```bash
  chmod +x network_commands.sh
  ```

4. Run the script (ensure you have root/sudo privileges):

  ```bash
  sudo ./network_commands.sh
  ```

## Example Output
Here are some example outputs the script provides:

- Network Interface Info (ifconfig):

  ```yaml
  eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.10  netmask 255.255.255.0  broadcast 192.168.1.255
  ```

- Routing Table (ip route):

  ```scss
  default via 192.168.1.1 dev eth0 
  192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.10
  ```

- Ping Example (ping -c 4 google.com):

  ```python
  PING google.com (216.58.213.174): 56 data bytes
  64 bytes from 216.58.213.174: icmp_seq=0 ttl=56 time=27.733 ms
  ```

## Contributing
Contributions are welcome! If you'd like to improve this script or add new network commands, feel free to submit a pull request or open an issue.

## Acknowledgements

- The Linux community for providing powerful networking tools.
- [Nmap](https://nmap.org/) for the excellent network scanner.
