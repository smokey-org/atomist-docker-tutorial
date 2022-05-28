FROM node:14-buster-slim@sha256:a245c68ef161b13aa64ea99a9bee76224b02f35ffe472606f8eb14cf5b3bca0b

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
