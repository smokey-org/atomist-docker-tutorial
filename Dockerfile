FROM node:14-buster-slim@sha256:55d503235968c6437551049c33e8cbbb8aa15b3c1b5aa0ea7c7f0a9b947e80ba

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
