FROM node:latest

RUN mkdir -p /home/app

VOLUME /home/app

ENV HOME=/home/app

COPY . /$HOME/app

WORKDIR /$HOME/app

RUN npm install

RUN yarn global add node-gyp && npm install -g nodemon && npm install -g express

EXPOSE 8080

CMD ["nodemon"]