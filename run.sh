#!/bin/sh

sudo docker run --rm -v $(pwd)/etc/named.conf:/etc/bind/named.conf -v $(pwd)/etc/keys:/etc/bind/keys -v $(pwd)/etc/master:/etc/bind/master -v $(pwd)/etc/rndc.key:/etc/bind/rndc.key -p 53:53/udp -p 53:53/tcp kadock/bind named -u named -g -n 1
