#!/bin/bash

progname=`basename $0`

usage() {
    cat <<EOF
usage: $progname <url>
generates on stdout opam data for from the file <url> 
EOF
}

if test $# -ne 1; then usage; exit 1; fi

case $1 in
    -h|--help) usage; exit 0;;
    *) url=$1;;
esac

a=/tmp/`basename $url`

wget -O $a $url

cat <<EOF
url {
  src:
    "$url"
  checksum: [
    "sha256=`sha256sum $a | awk '{print $1}'`"
    "sha512=`sha512sum $a | awk '{print $1}'`"
  ]
}
EOF

#x-commit-hash: "`git rev-list -n 1 $tag`"

rm -f $a
