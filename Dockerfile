FROM node:14-buster-slim@sha256:5dbc0996f2f2b89eb02e9a024d55aec2fe9d17db2bf6c86c36bd52de2c824916

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
