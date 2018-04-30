#! /bin/bash

for i in {0..128}
do
 # your-unix-command-here
NEWMAC=$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//')
#macchanger --mac=$NEWMAC enp0s3 
ip link add link enp0s3 address 00:$NEWMAC virtual$i type macvlan
ip link set virtual$i up
dhclient virtual$i &
#ifconfig enp0s3 hw ether 00:$NEWMAC
#dhclient -4 enp0s3
#sleep 5
#ip=$(ifconfig enp0s3 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1)
#ifacemac=$(ifconfig enp0s3 | awk '/^[a-z]/ { iface=$1; mac=$NF; next }/inet addr:/ { print iface, mac }')


#echo $i -- $ip -- $ifacemac
done

#count IP on virtual 
#sleep 30

#for i in {0..64}
#do
#kill $(ps aux | grep 'dhclient virtual$i' | awk '{print $2}') 
# your-unix-command-here
#NEWMAC=$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//')
#ifconfig virtual$i hw ether 00:$NEWMAC
#dhclient virtual$i &
#done

