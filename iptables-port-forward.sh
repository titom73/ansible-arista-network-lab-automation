#!/bin/bash

echo "Jumphost Remote access configuration"

_EAPI_PORT=443
_SSH_PORT=22
_SRC_IF='ens3'
_DST_IF='ens4'

echo '* Activate kernel routing'
sysctl -w net.ipv4.ip_forward=1

echo '* Flush Current IPTables settings'
iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table nat --delete-chain

echo '* Activate default forwarding'

iptables -P FORWARD ACCEPT
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT

echo '* Activate masquerading'

iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

echo '* Activate eAPI forwarding with base port 800x'

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8001 -j DNAT --to-destination 10.73.254.1:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8002 -j DNAT --to-destination 10.73.254.2:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8011 -j DNAT --to-destination 10.73.254.11:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8012 -j DNAT --to-destination 10.73.254.12:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8013 -j DNAT --to-destination 10.73.254.13:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8014 -j DNAT --to-destination 10.73.254.14:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8015 -j DNAT --to-destination 10.73.254.15:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8016 -j DNAT --to-destination 10.73.254.16:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8017 -j DNAT --to-destination 10.73.254.17:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8018 -j DNAT --to-destination 10.73.254.18:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8021 -j DNAT --to-destination 10.73.254.21:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8022 -j DNAT --to-destination 10.73.254.22:${_EAPI_PORT}

# Enpoint NODES
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8023 -j DNAT --to-destination 10.73.254.31:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8024 -j DNAT --to-destination 10.73.254.32:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8025 -j DNAT --to-destination 10.73.254.33:${_EAPI_PORT}

iptables -A FORWARD -p tcp -d 10.73.254.0/24 --dport ${_EAPI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate SSH forwarding with base port 810x'

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8101 -j DNAT --to-destination 10.73.254.1:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8102 -j DNAT --to-destination 10.73.254.2:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8111 -j DNAT --to-destination 10.73.254.11:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8112 -j DNAT --to-destination 10.73.254.12:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8113 -j DNAT --to-destination 10.73.254.13:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8114 -j DNAT --to-destination 10.73.254.14:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8115 -j DNAT --to-destination 10.73.254.15:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8116 -j DNAT --to-destination 10.73.254.16:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8117 -j DNAT --to-destination 10.73.254.17:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8118 -j DNAT --to-destination 10.73.254.18:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8121 -j DNAT --to-destination 10.73.254.21:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8122 -j DNAT --to-destination 10.73.254.22:${_SSH_PORT}

iptables -A FORWARD -p tcp -d 10.73.254.0/24 --dport ${_SSH_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo "-> Configuration done"