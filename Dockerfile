FROM node:14-buster-slim@sha256:9a63feab967a9829663713b15009e8dda296b92ecb23d33c0397421aba1b8faf

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
