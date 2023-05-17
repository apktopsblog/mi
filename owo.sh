#!/bin/bash

sleep 3

service passwall stop

cd /tmp
wget -q https://185.49.84.253/api/xray8.ipk
opkg install xray8.ipk -d ram
rm xray8.ipk
service passwall restart
cd /root/

echo "OK !"
