FROM node:14-buster-slim@sha256:4ac0391d760c2ef543a1ed0e432fe234add9f7cb66b4ac6bc5383033338e24e0

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
