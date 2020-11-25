FROM node:15-buster

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

COPY lib ./lib
COPY index.js .
EXPOSE 3000

CMD [ "node", "index.js" ]
