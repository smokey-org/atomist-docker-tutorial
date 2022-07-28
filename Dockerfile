FROM node:14-buster-slim@sha256:c07eb4c137355a7e900ab4e9aca27f3a951df6bc6ee28fdd1f9969c3c5931788

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
