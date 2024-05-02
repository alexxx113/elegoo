
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










echo "ftp:" >> "${file}"
echo "   enabled: "${FTP_ENABLE} >> "${file}"
echo "   port: "${FTP_PORT} >> "${file}"
echo "   password: \"${FTP_PASSWORD}\"" >> "${file}"
echo "   allowFiles: "${FTP_ALLOW} >> "${file}"
echo "   rootPath: \"${FTP_ROOT}\"" >> "${file}"






chmod a+x /config.yaml

echo "start config web"

#python3 -m http.server 8000 

#echo "start alarmserver"
#/alarmserver-linux-raspberry 

echo "elegoo run"
