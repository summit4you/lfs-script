#!/bin/bash

systemctl disable systemd-networkd-wait-online


# ln -s /dev/null /etc/systemd/network/99-default.link
cat > /etc/systemd/network/10-ether0.link << "EOF"
[Match]
# 将 MAC 地址替换为适用于您的网络设备的值
MACAddress=12:34:45:78:90:AB

[Link]
Name=ether0
EOF

cat > /etc/systemd/network/10-eth-static.network << "EOF"
[Match]
Name=<网络设备名>

[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
Domains=<您的域名>
EOF

cat > /etc/systemd/network/10-eth-dhcp.network << "EOF"
[Match]
Name=<网络设备名>

[Network]
DHCP=ipv4

[DHCPv4]
UseDomains=true
EOF

cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain <您的域名>
nameserver <您的主要域名服务器 IP 地址>
nameserver <您的次要域名服务器 IP 地址>

# End /etc/resolv.conf
EOF

echo "<lfs>" > /etc/hostname

cat > /etc/hosts << "EOF"
# Begin /etc/hosts

<192.168.0.2> <FQDN> [alias1] [alias2] ...
::1       ip6-localhost ip6-loopback
ff02::1   ip6-allnodes
ff02::2   ip6-allrouters

# End /etc/hosts
EOF





