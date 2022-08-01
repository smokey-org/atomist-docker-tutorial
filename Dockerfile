FROM node:14-buster-slim@sha256:8a1e9b565b4ecea7043b7142f6a540e9ef9ed8b521f7133de28dfcaa8d9848eb

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
