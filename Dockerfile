FROM node:14-buster-slim@sha256:31c02d82abc856bceee1fa5e25234166d6f8af617fe33d9bcd4905c687692bc1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
