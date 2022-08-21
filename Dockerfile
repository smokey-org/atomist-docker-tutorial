FROM node:14-buster-slim@sha256:4402144207a33ba95cb1119be593b9a9699721ad46e15acd32a0b5ca8784a527

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
