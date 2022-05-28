FROM node:14-buster-slim@sha256:dbe5be8fbf9fb87ea3c380e347c3492e47f309db8aa0581ae99958b67f9cd7ac

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
