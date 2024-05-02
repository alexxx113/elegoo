# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

RUN \
  apk add --no-cache \
    python3 git python3-pip python3-flask 
RUN pip3 install alive-progress --break-system-packages
WORKDIR /



RUN chmod -R 775 /RPP/uploads
RUN chown -R www-data:www-data /RPP/uploads
RUN chmod -R 775 /RPP/printer_ip.txt
RUN chown -R www-data:www-data /RPP/printer_ip.txt

RUN chmod -R 777 /RPP/rpp.py
RUN chmod -R 777 /RPP/cassini.py

COPY /elegoo/* /
#RUN chmod a+x /alarmserver-linux-raspberry
#RUN chmod a+x /config.yaml
#CMD [ "/alarmserver-linux-raspberry" ]


#COPY run.sh /data/
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

