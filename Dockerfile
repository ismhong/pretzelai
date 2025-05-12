FROM node:18-alpine as builder

WORKDIR /app

EXPOSE 3000

COPY package*.json /app/

RUN npm install

COPY . .

RUN npm run build

CMD ["npm","start","--","--port","3000"]
