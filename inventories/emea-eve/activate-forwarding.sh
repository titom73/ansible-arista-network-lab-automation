#!/bin/bash

_EAPI_PORT=443
_SSH_PORT=22

echo 'Flush Current IPTables settings'
iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table nat --delete-chain

echo 'Activate masquerading'

iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE
iptables -t nat -A POSTROUTING -o ens4 -j MASQUERADE

echo '* Activate eAPI forwarding with base port 800x'

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8001 -j DNAT --to-destination 10.73.1.11:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8002 -j DNAT --to-destination 10.73.1.12:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8003 -j DNAT --to-destination 10.73.1.13:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8004 -j DNAT --to-destination 10.73.1.14:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8005 -j DNAT --to-destination 10.73.1.15:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8006 -j DNAT --to-destination 10.73.1.16:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8007 -j DNAT --to-destination 10.73.1.17:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8008 -j DNAT --to-destination 10.73.1.18:${_EAPI_PORT}

iptables -A FORWARD -p tcp -d 10.73.1.0/24 --dport ${_EAPI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate SSH forwarding with base port 810x'

iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8101 -j DNAT --to-destination 10.73.1.11:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8102 -j DNAT --to-destination 10.73.1.12:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8103 -j DNAT --to-destination 10.73.1.13:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8104 -j DNAT --to-destination 10.73.1.14:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8105 -j DNAT --to-destination 10.73.1.15:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8106 -j DNAT --to-destination 10.73.1.16:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8107 -j DNAT --to-destination 10.73.1.17:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8108 -j DNAT --to-destination 10.73.1.18:${_SSH_PORT}

iptables -A FORWARD -p tcp -d 10.73.1.0/24 --dport ${_SSH_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo "-> Configuration done"