#!/bin/sh
echo "Practica IPTABLES"
iptables -F
iptables -X
iptables -Z
iptables -t nat -F

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT

#IP's BLOQUEADAS
iptables -A INPUT -s 172.31.14.1 -j DROP

iptables -A INPUT -s 172.31.14.10 -j DROP

iptables -A INPUT -s 172.31.14.20 -j DROP

iptables -A INPUT -s 172.31.14.30 -j DROP

#iptables -A INPUT -s 172.31.14.100-200 -j DROP
#iptables -L -n -v
