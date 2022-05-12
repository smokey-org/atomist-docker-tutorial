FROM node:14-buster-slim@sha256:a97aa477caf998ff7956e7392494c73d1b8abe8b3ed8cb07f4304c067506d351

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
