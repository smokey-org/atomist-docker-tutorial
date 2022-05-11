FROM node:14-buster-slim@sha256:544bb1f1aaff981e7a29e00fdbbbdbeaecdb705ec6566e83ebec161c441939ec

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
