#!/bin/bash

echo "run run run"


file="/config.yaml"
echo "debug: "${DEBUG} > "${file}"
## append ##
echo "mqtt:" >> "${file}"
echo "   enabled: "${MQTT_ENABLE} >> "${file}"
echo "   username: "${MQTT_USERNAME} >> "${file}"
echo "   password: \"${MQTT_PASSWORD}\"" >> "${file}"
echo "   port: "${MQTT_PORT} >> "${file}"
echo "   server: \"${MQTT_SERVER}\"" >> "${file}"
echo "   topicroot: "${MQTT_TOPICROOT} >> "${file}"


#ls -d1 /RRF/*


chmod -R 775 /RPP/uploads
chown -R www-data:www-data /RPP/uploads
chmod -R 775 /RPP/printer_ip.txt
chown -R www-data:www-data /RPP/printer_ip.txt

chmod a+x /RPP/rpp.py
chmod a+x /RPP/cassini.py




echo "ftp:" >> "${file}"
echo "   enabled: "${FTP_ENABLE} >> "${file}"
echo "   port: "${FTP_PORT} >> "${file}"
echo "   password: \"${FTP_PASSWORD}\"" >> "${file}"
echo "   allowFiles: "${FTP_ALLOW} >> "${file}"
echo "   rootPath: \"${FTP_ROOT}\"" >> "${file}"

#pwd

#ls 

chmod a+x /config.yaml

echo "start config web 5555"
echo "python run"
./RPP/rpp.py

#echo "start alarmserver"
#/alarmserver-linux-raspberry 

echo "elegoo run"
