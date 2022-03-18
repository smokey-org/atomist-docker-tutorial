FROM node:14-buster-slim@sha256:a9604712c1d7f202d6dd71c329a1d5577faf4d032a8278f0f8d8c3b623ad0c3d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
