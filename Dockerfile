FROM node:14-buster-slim@sha256:7426aa64bdffbd354e22b1931afbde87206bbf86dc8bce9e6aed8789004fbc39

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
