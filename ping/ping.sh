rm -rf alive
rm -rf dead
rm -rf arp

for i in {0..80} 
do
	ping 192.168.6.$i -c1 &>/dev/null
	if [[ $? -eq 0 ]]
	then
		echo "192.168.6.$i" >> alive
		arp 192.168.6.$i > arp
		echo "192.168.6.$i ============================= Alive"
	else
		echo "192.168.6.$i" >> dead
		echo "192.168.6.$i ============================= Dead"
	fi
done
sed -i '/Address/d' arp