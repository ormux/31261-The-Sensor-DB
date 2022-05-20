config="/etc/ufw/before.rules"

rule="-A ufw-before-input -p icmp --icmp-type echo-request -j ACCEPT"

case $1 in
   on)
     sudo sed -e "/$rule/ s/^/#/" -i $config
     sudo ufw disable
     sudo ufw default deny incoming
     sudo ufw allow from 192.168.0.101 to any
     sudo ufw enable
     sudo ufw reload
   ;;
   off)
     sudo sed -e "/$rule/ s/^#//" -i $config
     sudo ufw disable
     sudo ufw default allow incoming
     sudo ufw delete allow from 192.168.0.101 to any
     sudo ufw enable
     sudo ufw reload
   ;;
esac
