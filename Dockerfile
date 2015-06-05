FROM node:0.10

RUN apt-get update && apt-get -qqy install nano

WORKDIR /opt/iobroker

RUN npm cache clean && npm install iobroker

EXPOSE 8081 8090

CMD /usr/local/bin/node node_modules/iobroker.js-controller/controller.js
