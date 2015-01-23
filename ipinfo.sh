# Can give precise location in china
function ipapi.sinaapp.com {
	echo "According to ipapi.sinaapp.com"
	# use --location option in case the site has been moved
	curl -L "http://ipapi.sinaapp.com/api.php?f=text&ip=$1"
	echo
}

# Precise locatioin in china
# GBK encoding which may not be support by bash
function whois.pconline.com.cn {
	echo "According to whois.pconline.com.cn"
	curl -L "http://whois.pconline.com.cn/ipJson.jsp?callback=testJson&ip=$1"
	echo
}

# More infomation about the IP
function ip.blueera.net {
	echo "According to ip.blueera.net(support domain name info)"
	# use --location option in case the site has been moved
	curl -L "http://ip.blueera.net/api?type=text&ip=$1"
	echo
}

function ipinfo.io {
	echo "According to ipinfo.io"
	curl ipinfo.io/$1
	echo
}

function ip-api.com {
	echo "According to ip-api.com(support domain name info)"
	# use --location option in case the site has been moved
	curl -L "http://ip-api.com/line/$1"
	echo
}

# Location NOT precise
# GBK encoding which may not be support by bash
function int.dpool.sina.com.cn {
	echo "According to int.dpool.sina.com.cn(support domain name info)"
	# use --location option in case the site has been moved
	curl -L "http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=text&ip=$1"
	echo
}

# Main program start

if [ -z $1 ] || [ ".$1" == ".-h" ]; then
	echo "Usage: ipinfo.sh ip_address"
	exit 3
fi

# Cautions: no space in assignment
query_IP=$1

#ipinfo.io $query_IP
ipapi.sinaapp.com $query_IP
ip.blueera.net $query_IP
#ip-api.com $query_IP
#int.dpool.sina.com.cn $query_IP
#whois.pconline.com.cn $query_IP

