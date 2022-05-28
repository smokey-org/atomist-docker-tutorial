FROM node:14-buster-slim@sha256:9dd837b228ae995b4dd47927e6901ee9fc3e26ba1048cccab5cfb9bb8bed036d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
