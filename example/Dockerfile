# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM




RUN apk add --no-cache python3 git  
RUN apk add --no-cache python-pip 
#RUN apk add --no-cache python3-flask 

RUN pip install alive-progress --break-system-packages
WORKDIR /


#RUN echo "run.sh run"




COPY /elegoo/* /
#RUN chmod a+x /alarmserver-linux-raspberry
#RUN chmod a+x /config.yaml
#CMD [ "/alarmserver-linux-raspberry" ]
RUN chmod -R 775 /RPP/uploads
RUN chown -R www-data:www-data /RPP/uploads
RUN chmod -R 775 /RPP/printer_ip.txt
RUN chown -R www-data:www-data /RPP/printer_ip.txt

RUN chmod a+x /RPP/rpp.py
RUN chmod a+x /RPP/cassini.py

#COPY run.sh /data/
RUN chmod a+x /run.sh


RUN echo "run.sh run"


#RUN chmod a+x /RPP/rpp.py

CMD [ "/run.sh" ]

