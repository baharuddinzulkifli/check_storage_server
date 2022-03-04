user="" #your username
passwd="" #your password
host=("host ip" "host ip")
cmd="df /dev/sda1 --output=pcent"
for i in ${!host[*]} ; do
	ping -c 2 ${host[i]} > /dev/null
    		if [ $? = 0 ]; then
    		echo "Splunk Indexer: "  ${host[i]} "Alive"
    		else
    		echo "Splunk Indexer: " ${host[i]} "down" 
    		fi
	echo ${host[i]}
	sshpass -p $passwd ssh  $user@${host[i]} $cmd
done

