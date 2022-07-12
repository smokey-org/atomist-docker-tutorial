FROM node:14-buster-slim@sha256:600b64c22e64fb217c096bb536da293eeeb5f19f88c6503e10e7be86c421fa80

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
