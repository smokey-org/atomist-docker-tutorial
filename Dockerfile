FROM node:14-buster-slim@sha256:9a5460581050ca9f106b2908d34450a9304a84eeee5d50ea1ce6fca40593b5b7

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
