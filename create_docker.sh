#!/bin/bash
docker build -t haproxy_nginx/ubuntu16_1 haproxy_nginx1/.
docker build -t haproxy_nginx/ubuntu16_2 haproxy_nginx2/.
nohup docker run -p 81:80 haproxy_nginx/ubuntu16_1 & 
nohup docker run -p 82:80 haproxy_nginx/ubuntu16_2 &
sleep 15
curl 127.0.0.1:81 | grep h1
curl 127.0.0.1:82 | grep h1
