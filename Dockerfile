FROM node:14-buster-slim@sha256:1e90bc745b7a8e8b7367e3e8284e35c949e5ee7317713c3d5cffc902837147f8

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
