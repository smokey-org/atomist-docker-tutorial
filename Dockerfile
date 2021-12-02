FROM node:14-buster-slim@sha256:7ea6e6ce9c7017e2aef78c657cf48581f1bafc43b99e4800191e0e73f1766bf7

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
