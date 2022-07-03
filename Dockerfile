FROM node:14-buster-slim@sha256:d6081c87a3db9641401ce6822d3a87888cc821061a167a6d735cc821c7fa464e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
