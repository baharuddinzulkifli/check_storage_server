USERNAME="" #your username
PASSWD="" #your password
CMD="df /dev/sda2 --output=pcent"

cat host.txt | while read host; do
	echo "Host: $host"
	sshpass -p $PASSWD ssh -o StrictHostKeyChecking=no  $USERNAME@$host $CMD 	

done 
