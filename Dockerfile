FROM node:14-buster-slim@sha256:7190ceb8b777a4201c025e4e608716a675dd0cda1e60b41a26480286300fc29a

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
