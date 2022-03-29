FROM node:14-buster-slim@sha256:2b09c6dd25ea1710417ecbe1ed6dbf3bf143b73a70b2375a17b895927549fba8

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
