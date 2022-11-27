#Dockerfile, image, container

FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

#ADD docker-entrypoint.sh /usr/src/app/

#RUN ["chmod", "777", "/usr/src/app/docker-entrypoint.sh"]

#RUN ["chmod", "777", "/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 8080

CMD [ "node", "index.js" ]

