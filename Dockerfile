FROM node:14-buster-slim@sha256:97d866136413c59b4206e05ccf569229910ab1cf25762717f7365a0ac42ba957

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
