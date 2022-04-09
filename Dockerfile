FROM node:14-buster-slim@sha256:714b3842f3ee5e59398caff15481aa78e79456bfc23ea1dd38c19d3a3335b496

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
