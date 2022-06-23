FROM node:14-buster-slim@sha256:8d74a9653938f57e9e9125ab92efbd2615fe674509f43aa621d3bf1013edd1fe

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
