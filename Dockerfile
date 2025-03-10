FROM node:10

RUN npm install -g grunt-cli

ADD ./ /opt
WORKDIR /opt
RUN npm install
RUN grunt

CMD ["/usr/local/bin/node", "/opt/bin/www"]
