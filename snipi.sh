#!/usr/bin/env bash
# shellcheck disable=SC2034

# Variables
VERSION="0.0.1"

#---------------------------------------------------------------------------------------------------------
# Usage | help
usage() {
	echo -ne "
	USAGE snipi.sh <operation>
	-h, --help
	-p, --genpass <length as number>
	--paste.rs <file or use full url>
	--0x0.st <file or fill url>
	-v, --version
	\n"
}
# "Version"
version() {
	printf "version%10s\n" "$VERSION"
}

# Generate on the go passwords
genpass() {
	local l=$1
       	[ "$l" == "" ] && l=40
      	# tr -dc 'A-Za-z0-9!"#$%&\()*+,-./:;<=>?@[\]^_`{|}~' < /dev/urandom | head -c ${l} | xargs
      	# tr -dc 'A-Za-z0-9!#$%' < /dev/urandom | head -c ${l} | xargs
		openssl rand -base64 "$1"
}

paste_rs() {
	curl --data-binary @"$1" "https://paste.rs/"
}

0x0_st() {
	curl -F"file=@$1" "https://0x0.st"
}
#---------------------------------------------------------------------------------------------------------
# SC2034
PARSED_ARGUMENTS=$(getopt --alternative --name "$0" --options h,p:,v --longoptions genpass:,help,paste.rs:,0x0.st:,version -- "$@")
VALID_ARGUMENTS=$?
if [[ "$VALID_ARGUMENTS" != "0" ]]; then
    usage
    exit 0
fi

# Make loop
while true; do
	case "$1" in
	-p | --genpass)
		genpass "$2"
		break
		;;
	--paste.rs)
		paste_rs "$2"
		break
		;;
	--0x0.st)
		0x0_st "$2"
		break
		;;
	-v | --version)
		version
		break
		;;
	-h | --help)
		usage
		break
		;;
	*)
		usage
		break
		;;
	esac
done
