FROM node:14-buster-slim@sha256:9964cb2dda6a15e765f486e7a72ff83a95e05197c83a8a37977517c2a298d172

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
