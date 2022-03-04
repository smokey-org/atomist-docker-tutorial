FROM node:14-buster-slim@sha256:694f31bebf56a662df4242be100da24b61b749310d53b534f8d65464d83126af

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
