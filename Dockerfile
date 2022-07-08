FROM node:14-buster-slim@sha256:fb1358a762ee8e96cb8c096a757a6091fa1eb8c5264f972b08858d65cf065b50

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
