FROM python:2.7-alpine

RUN apk update
RUN apk upgrade

RUN apk --update add postgresql-client postgresql-dev
RUN apk add build-base python-dev py-pip jpeg-dev zlib-dev
ENV LIBRARY_PATH=/lib:/usr/lib

COPY ./dfrq/requirements.txt /
RUN pip install -r requirements.txt

ENV DJANGO_SETTINGS_MODULE=dfrqapp.settings.deploy_docker

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

WORKDIR /dfrq