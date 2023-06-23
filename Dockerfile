FROM node:14-buster-slim@sha256:198142146b4c47193348f6415da769bdb5035c16fcab051c38c256a6b48f2e1c

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
