#! /bin/bash

for i in {0..128}
do
 # your-unix-command-here
#EWMAC=$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//')
#macchanger --mac=$NEWMAC enp0s3
ip link delete virtual$i
#p link set virtual$i up
#hclient virtual$i &
#ifconfig enp0s3 hw ether 00:$NEWMAC
#dhclient -4 enp0s3
#sleep 5
#ip=$(ifconfig enp0s3 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1)
#ifacemac=$(ifconfig enp0s3 | awk '/^[a-z]/ { iface=$1; mac=$NF; next }/inet addr:/ { print iface, mac }')


#echo $i -- $ip -- $ifacemac
done

