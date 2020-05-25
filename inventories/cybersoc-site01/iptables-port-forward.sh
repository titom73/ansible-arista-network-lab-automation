#!/bin/bash

echo '* Activate IP Forwarding'

sysctl -w net.ipv4.ip_forward=1

echo '* Flush Current IPTables settings'
iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table nat --delete-chain

echo '* Activate masquerading'

iptables -t nat -A POSTROUTING -o ens4 -j MASQUERADE
iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE

echo '* Activate SSH forwarding with base port 200x'

iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2001 -j DNAT --to-destination 10.255.1.101:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2002 -j DNAT --to-destination 10.255.1.102:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2003 -j DNAT --to-destination 10.255.1.103:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2004 -j DNAT --to-destination 10.255.1.104:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2005 -j DNAT --to-destination 10.255.1.105:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2006 -j DNAT --to-destination 10.255.1.106:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2007 -j DNAT --to-destination 10.255.1.107:22
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 2008 -j DNAT --to-destination 10.255.1.108:22

iptables -A FORWARD -p tcp -d 10.255.1.0/24 --dport 22 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate eAPI forwarding with base port 300x'

iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3001 -j DNAT --to-destination 10.255.1.101:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3002 -j DNAT --to-destination 10.255.1.102:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3003 -j DNAT --to-destination 10.255.1.103:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3004 -j DNAT --to-destination 10.255.1.104:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3005 -j DNAT --to-destination 10.255.1.105:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3006 -j DNAT --to-destination 10.255.1.106:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3007 -j DNAT --to-destination 10.255.1.107:443
iptables -t nat -A PREROUTING -p tcp -i ens3 --dport 3008 -j DNAT --to-destination 10.255.1.108:443

iptables -A FORWARD -p tcp -d 20.255.1.0/24 --dport 443 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Done'