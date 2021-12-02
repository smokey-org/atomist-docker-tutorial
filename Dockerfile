FROM node:14-buster-slim@sha256:55bfb1f354bf004bc4909e20ca7b78e999686e71d0bd9433296f7ccf68ccaf39

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
