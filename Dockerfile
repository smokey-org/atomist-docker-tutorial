FROM node:14-buster-slim@sha256:edac64b1b8e799c8e9e53f628b348b2842c5e90c22056d3cc2597576319cde1d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
