iptables -F INPUT
iptables -F OUTPUT
iptables -F FORWARD
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables -A INPUT  



iptables -t nat -P INPUT DROP
iptables -t nat -P OUTPUT DROP
iptables -t nat -P FORWARD DROP
iptables -A INPUT -p TCP multiport --dport 22,80,25,993 -J ACCEPT
