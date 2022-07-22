FROM node:lts-alpine3.15

WORKDIR /app

COPY package.json .

RUN npm install -g npm

RUN npm install && \
  npm install -g @nestjs/cli

COPY . .

EXPOSE 80

RUN npm run build

CMD ["npm","run","start:prod"]