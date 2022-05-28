FROM node:14-buster-slim@sha256:b64d1b2033919935879646f5bb5e34fde6a47cbbf123f1658f0342ce144b4a57

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
