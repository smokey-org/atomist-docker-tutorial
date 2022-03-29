FROM node:14-buster-slim@sha256:7fda737e72a703dec4f5e2e11874b3dd44c0e6c2a541fc65c6764065212ed3a1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
