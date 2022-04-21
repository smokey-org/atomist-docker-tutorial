FROM node:14-buster-slim@sha256:43210a912b08b70b723de411292703f04c1e326aed7b2983146ba4f685c46cb7

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
