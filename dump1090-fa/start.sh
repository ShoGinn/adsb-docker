#!/bin/bash
mkdir -p /run/dump1090-fa

/usr/sbin/service lighttpd start

/usr/bin/dump1090-fa \
--quiet \
--net \
--lat $DUMP1090_LAT \
--lon $DUMP1090_LON \
--write-json /run/dump1090-fa \
--write-json-every 1 \
--json-location-accuracy 2 &

while true
        do
        sleep 20
done
