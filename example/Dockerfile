# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM




RUN apk add --no-cache python3 git  


WORKDIR /


#RUN echo "run.sh run"




COPY /elegoo/* /
#RUN chmod a+x /alarmserver-linux-raspberry
#RUN chmod a+x /config.yaml
#CMD [ "/alarmserver-linux-raspberry" ]


#COPY run.sh /data/
RUN chmod a+x /run.sh


#RUN echo "run.sh run"


#RUN chmod a+x /RPP/rpp.py

CMD [ "/run.sh" ]

