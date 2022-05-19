FROM node:14-buster-slim@sha256:a721dcccb6d8a2d7770918f7b9411bbfc19ca07e73fd61600668c738aa9a9603

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
