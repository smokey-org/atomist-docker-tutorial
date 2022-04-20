FROM node:14-buster-slim@sha256:c41524b5409331b4bbad90b2dbff8b21d5bf170a859001a6f57dd61c5506b88d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
