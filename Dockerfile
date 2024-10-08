FROM node:20.12-buster-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4000

CMD [ "npm", "run", "start" ]
