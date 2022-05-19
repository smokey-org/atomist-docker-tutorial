FROM node:14-buster-slim@sha256:ca91c9f7408805dbb26c73cbb3f12aecd67028369e08c2907e8b5d6548a964f0

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
