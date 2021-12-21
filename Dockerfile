FROM node:14-buster-slim@sha256:99a0c7a038ed446f6ce718693609626ea02fcccdc3dbaa725fd6582e0c609d9b

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
