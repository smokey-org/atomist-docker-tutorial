FROM node:14-buster-slim@sha256:f38cd404713504be16fb62ef241835c29b97052837be409b4770a2ff5dc356cd

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
