FROM node:14-buster-slim@sha256:38faae8cb2d52f2a97e0b497b7f79fcc61f68eed0886d90f1421ee537a6b4f01

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
