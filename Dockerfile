FROM node:14

RUN adduser ethnetstats

ADD ./ /home/ethnetstats/ethnetstats
WORKDIR /home/ethnetstats/ethnetstats
RUN npm -g install


RUN chown -R ethnetstats. /home/ethnetstats

USER ethnetstats
CMD ["/usr/local/bin/node", "/home/ethnetstats/ethnetstats/bin/www"]
