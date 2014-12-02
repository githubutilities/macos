if [ -z $1 ] || [ ".$1" == ".-h" ]; then
	echo "Usage: ipinfo.sh ip_address"
	exit 3
fi
curl ipinfo.io/$1
