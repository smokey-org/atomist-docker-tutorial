FROM node:14-buster-slim@sha256:d60e30aebcb05f4b4267d3103c538202c5fb2cbc1e1f38d0821873f5f72fe324

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
