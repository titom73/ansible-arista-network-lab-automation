#!/bin/bash

_EAPI_PORT=443
_SSH_PORT=22
_GNMI_PORT=6030
_SRC_IF='ens3'
_DST_IF='ens4'

echo 'Flush Current IPTables settings'
#iptables --flush
#iptables --delete-chain
#iptables --table nat --flush
#iptables --table nat --delete-chain

iptables -P FORWARD ACCEPT
#iptables -P INPUT ACCEPT
#iptables -P OUTPUT ACCEPT

echo 'Activate masquerading'

iptables -t nat -A POSTROUTING -o ${_SRC_IF} -j MASQUERADE
iptables -t nat -A POSTROUTING -o ${_DST_IF} -j MASQUERADE


echo '* Activate gNMI forwarding with base port 820x'
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8201 -j DNAT --to-destination 10.73.1.11:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8202 -j DNAT --to-destination 10.73.1.12:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8203 -j DNAT --to-destination 10.73.1.13:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8204 -j DNAT --to-destination 10.73.1.14:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8205 -j DNAT --to-destination 10.73.1.15:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8206 -j DNAT --to-destination 10.73.1.16:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8207 -j DNAT --to-destination 10.73.1.17:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8208 -j DNAT --to-destination 10.73.1.18:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8211 -j DNAT --to-destination 10.73.1.21:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8212 -j DNAT --to-destination 10.73.1.22:${_GNMI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8213 -j DNAT --to-destination 10.73.1.23:${_GNMI_PORT}

iptables -A FORWARD -p tcp -d 10.73.1.0/24 --dport ${_GNMI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -p tcp -d 10.73.2.0/24 --dport ${_GNMI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate eAPI forwarding with base port 800x'

iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8001 -j DNAT --to-destination 10.73.1.11:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8002 -j DNAT --to-destination 10.73.1.12:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8003 -j DNAT --to-destination 10.73.1.13:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8004 -j DNAT --to-destination 10.73.1.14:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8005 -j DNAT --to-destination 10.73.1.15:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8006 -j DNAT --to-destination 10.73.1.16:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8007 -j DNAT --to-destination 10.73.1.17:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8008 -j DNAT --to-destination 10.73.1.18:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8011 -j DNAT --to-destination 10.73.1.21:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8012 -j DNAT --to-destination 10.73.1.22:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8013 -j DNAT --to-destination 10.73.1.23:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8014 -j DNAT --to-destination 10.73.1.24:${_EAPI_PORT}


iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8021 -j DNAT --to-destination 10.73.2.11:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8023 -j DNAT --to-destination 10.73.2.13:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8024 -j DNAT --to-destination 10.73.2.14:${_EAPI_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8025 -j DNAT --to-destination 10.73.2.15:${_EAPI_PORT}

iptables -A FORWARD -p tcp -d 10.73.1.0/24 --dport ${_EAPI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -p tcp -d 10.73.2.0/24 --dport ${_EAPI_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo '* Activate SSH forwarding with base port 810x'

iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8101 -j DNAT --to-destination 10.73.1.11:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8102 -j DNAT --to-destination 10.73.1.12:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8103 -j DNAT --to-destination 10.73.1.13:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8104 -j DNAT --to-destination 10.73.1.14:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8105 -j DNAT --to-destination 10.73.1.15:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8106 -j DNAT --to-destination 10.73.1.16:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8107 -j DNAT --to-destination 10.73.1.17:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8108 -j DNAT --to-destination 10.73.1.18:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8111 -j DNAT --to-destination 10.73.1.21:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8112 -j DNAT --to-destination 10.73.1.22:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8113 -j DNAT --to-destination 10.73.1.23:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8114 -j DNAT --to-destination 10.73.1.24:${_SSH_PORT}
### POD Server
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8109 -j DNAT --to-destination 10.73.1.19:${_SSH_PORT}
iptables -t nat -A PREROUTING -p tcp -i ${_SRC_IF} --dport 8110 -j DNAT --to-destination 10.73.1.20:${_SSH_PORT}

iptables -A FORWARD -p tcp -d 10.73.1.0/24 --dport ${_SSH_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -p tcp -d 10.73.2.0/24 --dport ${_SSH_PORT} -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

echo "-> Configuration done"