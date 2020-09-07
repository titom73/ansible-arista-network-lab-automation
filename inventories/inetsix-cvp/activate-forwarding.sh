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

iptables -t nat -A POSTROUTING -o ${_SRC_IF} -j MASQUERADE
iptables -t nat -A POSTROUTING -o ${_DST_IF} -j MASQUERADE

echo '* Activate eAPI forwarding with base port 800x'

iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8001 -j DNAT --to-destination 10.73.255.101:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8002 -j DNAT --to-destination 10.73.255.102:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8011 -j DNAT --to-destination 10.73.255.111:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8012 -j DNAT --to-destination 10.73.255.112:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8013 -j DNAT --to-destination 10.73.255.113:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8014 -j DNAT --to-destination 10.73.255.114:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8015 -j DNAT --to-destination 10.73.255.115:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8016 -j DNAT --to-destination 10.73.255.116:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8017 -j DNAT --to-destination 10.73.255.117:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8018 -j DNAT --to-destination 10.73.255.118:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8019 -j DNAT --to-destination 10.73.255.119:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8021 -j DNAT --to-destination 10.73.255.121:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8022 -j DNAT --to-destination 10.73.255.122:${_EAPI_PORT}


iptables -A FORWARD -p tcp -d 10.73.255.0/24 --dport ${_EAPI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate SSH forwarding with base port 810x'

iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8101 -j DNAT --to-destination 10.73.255.101:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8102 -j DNAT --to-destination 10.73.255.102:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8111 -j DNAT --to-destination 10.73.255.111:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8112 -j DNAT --to-destination 10.73.255.112:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8113 -j DNAT --to-destination 10.73.255.113:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8114 -j DNAT --to-destination 10.73.255.114:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8115 -j DNAT --to-destination 10.73.255.115:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8116 -j DNAT --to-destination 10.73.255.116:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8117 -j DNAT --to-destination 10.73.255.117:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8118 -j DNAT --to-destination 10.73.255.118:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8119 -j DNAT --to-destination 10.73.255.119:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8121 -j DNAT --to-destination 10.73.255.121:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8122 -j DNAT --to-destination 10.73.255.122:${_SSH_PORT}

iptables -A FORWARD -p tcp -d 10.73.255.0/24 --dport ${_SSH_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo "-> Configuration done"