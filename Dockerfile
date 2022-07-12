FROM node:14-buster-slim@sha256:5c6bede6640adfb1f7c54da3225ab884cc84e4006c9e522ea59e860f551aef5c

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
