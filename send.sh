if [[ -z $1 ]] || [ ".$1" == ".-h" ]; then
	echo "Usage: $0 file"
	exit 3
fi

if [[ ! -r $1 ]]; then
	echo "The file $1 is not readable"
	exit 1
fi

echo "file $1 pending on port 1234"
# check if pipe viewer exists
if type pv >/dev/null 2>&1; then
	pv "$1" | nc -l 1234
else
	dd if="$1" bs=16k | nc -l 1234
fi
