FROM node:14-buster-slim@sha256:c60f2a027a14fe51f95e20c2dfc90fc72840d065bc3f832fe017da8b1c684b3f

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
