FROM node:4.2.2

MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>

RUN adduser --disabled-password --gecos "" sinopia

RUN mkdir -p /opt/sinopia/storage

WORKDIR /opt/sinopia

RUN npm install js-yaml sinopia -g --registry https://registry.npm.taobao.org

ADD ./config.yaml /etc/config.default.yaml

RUN chown -R sinopia:sinopia /opt/sinopia

USER sinopia

EXPOSE 4873

VOLUME /opt/sinopia

ADD ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]
