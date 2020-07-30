#!/bin/bash

_EAPI_PORT=443
_SSH_PORT=22

echo 'Flush Current IPTables settings'
iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table nat --delete-chain

echo 'Activate masquerading'

iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

echo '* Activate eAPI forwarding with base port 800x'

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8001 -j DNAT --to-destination 10.73.254.1:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8002 -j DNAT --to-destination 10.73.254.2:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8011 -j DNAT --to-destination 10.73.254.11:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8012 -j DNAT --to-destination 10.73.254.12:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8013 -j DNAT --to-destination 10.73.254.13:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8014 -j DNAT --to-destination 10.73.254.14:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8015 -j DNAT --to-destination 10.73.254.15:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8016 -j DNAT --to-destination 10.73.254.16:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8017 -j DNAT --to-destination 10.73.254.17:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8018 -j DNAT --to-destination 10.73.254.18:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8021 -j DNAT --to-destination 10.73.254.21:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8022 -j DNAT --to-destination 10.73.254.22:443

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8001 -j DNAT --to-destination 10.73.254.1:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8002 -j DNAT --to-destination 10.73.254.2:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8011 -j DNAT --to-destination 10.73.254.11:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8012 -j DNAT --to-destination 10.73.254.12:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8013 -j DNAT --to-destination 10.73.254.13:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8014 -j DNAT --to-destination 10.73.254.14:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8015 -j DNAT --to-destination 10.73.254.15:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8016 -j DNAT --to-destination 10.73.254.16:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8017 -j DNAT --to-destination 10.73.254.17:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8018 -j DNAT --to-destination 10.73.254.18:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8021 -j DNAT --to-destination 10.73.254.21:443
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8022 -j DNAT --to-destination 10.73.254.22:443

iptables -A FORWARD -p tcp -d 10.73.254.0/24 --dport 443 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT