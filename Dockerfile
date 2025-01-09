FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install -g pm2

COPY . .

EXPOSE 7777

CMD ["pm2-runtime", "start", "ecosystem.config.js"]

