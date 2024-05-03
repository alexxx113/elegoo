# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM




RUN apk add --no-cache python3 git  
#RUN apk add --no-cache python-pip 



FROM python:3.11-alpine3.18 as base
 
# This flag is important to output python logs correctly in docker!
ENV PYTHONUNBUFFERED 1
# Flag to optimize container size a bit by removing runtime python cache
ENV PYTHONDONTWRITEBYTECODE 1
#WORKDIR /code
 
FROM base as dep-poetry

# Setup base
RUN \
    apk add --no-cache \
        git python3 \
    \
    && pip3 install \
        --no-cache-dir \
        --prefer-binary \
        --find-links "https://wheels.home-assistant.io/musllinux/" \
        repository-updater==1.3.0



#RUN apt-get -y python3-flask 
#RUN apt-get -y install python3-pip
RUN pip install alive-progress flask #--break-system-packages

ARG BUILD_FROM
FROM $BUILD_FROM
ENTRYPOINT ["/usr/bin/env"]
WORKDIR /


#RUN echo "run.sh run"




COPY  /elegoo/* /RPP/
#RUN chmod a+x /alarmserver-linux-raspberry
#RUN chmod a+x /config.yaml
#CMD [ "/alarmserver-linux-raspberry" ]

WORKDIR /
#COPY run.sh /data/
RUN chmod a+x /RPP/run.sh


#RUN echo "run.sh run"


#RUN chmod a+x /RPP/rpp.py

CMD [ "/RPP/run.sh" ]

