# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM
LABEL org.opencontainers.image.source https://github.com/unl0ck/homeassistant-addon-viessmann-gridbox
RUN \
  apk add --no-cache \
    python3 py3-pip py3-flask
RUN ln -sf python3 /usr/bin/python
COPY rootfs /
#WORKDIR /data

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
    curl -sSLf -o /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"


#RUN pip install -r requirements.txt

#RUN apt-get -y python3-flask 
#RUN apt-get -y install python3-pip
RUN pip install alive-progress # flask #--break-system-packages

ARG BUILD_FROM
FROM $BUILD_FROM
ENTRYPOINT ["/usr/bin/env"]
WORKDIR /


#RUN echo "run.sh run"

RUN ln -sf python3 /usr/bin/python
#RUN ln -sf python3 /usr/bin/python3

COPY  /elegoo/* /RPP/
#RUN chmod a+x /alarmserver-linux-raspberry
#RUN chmod a+x /config.yaml
#CMD [ "/alarmserver-linux-raspberry" ]

WORKDIR /
#COPY run.sh /data/
RUN chmod a+x /RPP/111.py
RUN chmod a+x /RPP/rpp.py
CMD ["python", "/RPP/111.py"]


#RUN echo "run.sh run"


RUN chmod a+x /RPP/run.sh

CMD [ "/RPP/run.sh" ]

