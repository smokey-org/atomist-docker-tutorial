FROM node:14-buster-slim@sha256:705a1d6c219184e01ed802e86b628549d27d50384a02b021f977ef0d77442f5f

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
