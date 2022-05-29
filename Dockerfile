FROM node:14-buster-slim@sha256:6c609e4242d8f65fa7c5f9093ad4926321d44e0cb42915b672e7ae8e9618bc5d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
