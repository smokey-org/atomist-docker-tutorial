FROM node:14-buster-slim@sha256:2820be5e1c7783bc295a07bbc3e351813bf5adda61be572d61495abf762a544d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
