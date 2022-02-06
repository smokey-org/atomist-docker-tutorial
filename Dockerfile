FROM node:14-buster-slim@sha256:c8d802e75238818f8aa78d65f0ffb9a6f8daa56873ff0d0d315d9b584be9fee1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
