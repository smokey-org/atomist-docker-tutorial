FROM node:14-buster-slim@sha256:c167b6ee36720e7036bd44f2a50497c3c77391197274788c9a440b128fa43961

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
