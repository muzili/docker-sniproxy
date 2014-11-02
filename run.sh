#!/bin/bash
CONFDIR=$(dirname $(readlink -f $0))
echo $CONFDIR
docker run --net=host -v $CONFDIR/conf:/etc/sniproxy --name sniproxy -d muzili/sniproxy
