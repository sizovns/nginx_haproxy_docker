#!/bin/bash
mkdir /dev/log
mkdir /run/haproxy
chmod -R 777 /dev/log
nginx
haproxy -f /etc/haproxy/haproxy.cfg  -d
