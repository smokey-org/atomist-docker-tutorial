FROM node:14-buster-slim@sha256:cf68cb5107b36a65523fda66da5d7b579eab9135a6fb91c42a324bf59d212265

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
