if [ -z $1 ] || [ -z $2 ] || [ ".$1" == ".-h" ]; then
	echo "Usage: $0 server_ip port"
	exit 3
fi

nc $1 $2
