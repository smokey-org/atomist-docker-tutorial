FROM node:14-buster-slim@sha256:7ea37fedcbd8f32243d29494784fa094da01a5485c26508de35732ade0cd9e5e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
