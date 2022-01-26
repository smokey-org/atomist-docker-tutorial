FROM node:14-buster-slim@sha256:5319ce7d4fb43a75bb72b83e4bbd109010af4144a593a0dbca066e488d2329dc

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
