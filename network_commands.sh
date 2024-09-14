#!/bin/bash

# Check if the user is root, as some commands require root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run as root or with sudo."
  exit 1
fi

echo "### Displaying Network Information ###"

# 1. ifconfig (deprecated, replaced by ip command)
echo -e "\n--- ifconfig (Network Interface Info) ---"
ifconfig
echo -e "\nExample Output:"
echo -e "eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.10  netmask 255.255.255.0  broadcast 192.168.1.255"

# 2. ip addr (current replacement for ifconfig)
echo -e "\n--- ip addr (IP Address Info) ---"
ip addr
echo -e "\nExample Output:"
echo -e "2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    inet 192.168.0.105/24 brd 192.168.0.255 scope global dynamic enp0s3"

# 3. ip route (shows routing table)
echo -e "\n--- ip route (Routing Table) ---"
ip route
echo -e "\nExample Output:"
echo -e "default via 192.168.1.1 dev eth0 
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.10"

# 4. ping (test connectivity to a host)
echo -e "\n--- ping (Ping google.com) ---"
ping -c 4 google.com
echo -e "\nExample Output:"
echo -e "PING google.com (216.58.213.174): 56 data bytes
64 bytes from 216.58.213.174: icmp_seq=0 ttl=56 time=27.733 ms"

# 5. traceroute (shows the route packets take to a host)
echo -e "\n--- traceroute (Trace route to google.com) ---"
traceroute google.com
echo -e "\nExample Output:"
echo -e "1  192.168.1.1 (192.168.1.1)  1.439 ms  0.685 ms  0.634 ms
2  10.0.0.1 (10.0.0.1)  8.073 ms  7.559 ms  7.743 ms"

# 6. netstat (shows network connections, routing tables, interface statistics)
echo -e "\n--- netstat (Active Connections) ---"
netstat -tuln
echo -e "\nExample Output:"
echo -e "Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN"

# 7. ss (alternative to netstat)
echo -e "\n--- ss (Active TCP Connections) ---"
ss -tuln
echo -e "\nExample Output:"
echo -e "Netid   State    Recv-Q    Send-Q    Local Address:Port    Peer Address:Port
tcp     LISTEN   0         128       0.0.0.0:22          0.0.0.0:*"

# 8. arp (shows Address Resolution Protocol table)
echo -e "\n--- arp (ARP Table) ---"
arp -n
echo -e "\nExample Output:"
echo -e "Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.1.1            ether   00:1f:2e:3d:4c:5b   C                     eth0"

# 9. dig (DNS lookup)
echo -e "\n--- dig (DNS Lookup for google.com) ---"
dig google.com +short
echo -e "\nExample Output:"
echo -e "142.250.190.46"

# 10. nslookup (DNS lookup)
echo -e "\n--- nslookup (DNS Lookup for google.com) ---"
nslookup google.com
echo -e "\nExample Output:"
echo -e "Server:		192.168.1.1
Address:	192.168.1.1#53

Non-authoritative answer:
Name:	google.com
Address: 142.250.190.46"

# 11. whois (Fetch whois info for a domain)
echo -e "\n--- whois (Whois lookup for google.com) ---"
whois google.com
echo -e "\nExample Output:"
echo -e "Domain Name: GOOGLE.COM
Registry Domain ID: 2138514_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.markmonitor.com"

# 12. curl (HTTP requests)
echo -e "\n--- curl (Fetching google.com headers) ---"
curl -I https://www.google.com
echo -e "\nExample Output:"
echo -e "HTTP/2 200 
date: Fri, 01 Sep 2023 12:23:14 GMT
content-type: text/html; charset=ISO-8859-1"

# 13. wget (Download files from the web)
echo -e "\n--- wget (Download index page of google.com) ---"
wget -qO- https://www.google.com
echo -e "\nExample Output:"
echo -e "<!doctype html><html>... (html content)"

# 14. nmap (Network exploration tool)
echo -e "\n--- nmap (Scanning localhost ports) ---"
nmap -p 1-1000 localhost
echo -e "\nExample Output:"
echo -e "Starting Nmap 7.80 ( https://nmap.org ) at 2023-09-01 12:00 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00037s latency).
Not shown: 997 closed ports
PORT    STATE SERVICE
22/tcp  open  ssh"

# 15. hostname (Get or set the system's hostname)
echo -e "\n--- hostname (Show system's hostname) ---"
hostname
echo -e "\nExample Output:"
echo -e "my-server"

# End of Script
echo -e "\n### Network Commands Demonstration Complete ###"
