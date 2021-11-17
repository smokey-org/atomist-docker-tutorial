FROM node:14-buster-slim@sha256:32ae9473905f4f78464d8bba9f458040d67192a03932cccbc66ca5308b6fe778

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
