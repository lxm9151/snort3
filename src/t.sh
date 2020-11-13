sudo iptables -D INPUT -j SECGRP_INPUT
sudo iptables -F SECGRP_INPUT
sudo iptables -X SECGRP_INPUT
#sudo iptables -N SECGRP_INPUT
#sudo iptables -A INPUT -j SECGRP_INPUT
sudo iptables -D OUTPUT -j SECGRP_OUTPUT
sudo iptables -F SECGRP_OUTPUT
sudo iptables -X SECGRP_OUTPUT
#sudo iptables -N SECGRP_OUTPUT
#sudo iptables -A OUTPUT -j SECGRP_OUTPUT
#sudo iptables -A SECGRP_INPUT -i eth0 --ipv4 -p tcp --dport 22 -s 10.10.0.0/16 -j ACCEPT
#sudo iptables -A SECGRP_OUTPUT -i eth0 --ipv4 -p udp -s 10.11.11.0/8 -j ACCEPT
#sudo iptables -A SECGRP_INPUT  -s 192.168.0.2 -j ACCEPT
#sudo iptables -A SECGRP_INPUT  -s 192.168.0.1 -j ACCEPT
