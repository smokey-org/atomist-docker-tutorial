FROM node:14-buster-slim@sha256:cd1699e5e45bccb839923bffdb8342aaaf71ad6de9e733c0a4c93efb851133b1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
