FROM node:16-alpine

WORKDIR /app

COPY ./package.json /app/

RUN npm i

RUN npm i -g pm2

COPY . /app/

ARG VERSION

RUN echo "$VERSION"

EXPOSE 8181

CMD ["pm2-runtime", "index.js"]
