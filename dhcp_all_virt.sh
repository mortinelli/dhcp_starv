for i in {0..128}
do
 # your-unix-command-here
kill $(ps aux | grep "dhclient virtual$i" | awk '{print $2}')
NEWMAC=$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//')
ifconfig virtual$i hw ether 00:$NEWMAC
dhclient virtual$i &
done

