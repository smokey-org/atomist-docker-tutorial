FROM node:14-buster-slim@sha256:234d40bd52e68d410f72c8056f2bc98a3bbc3af37af96704945fb0618cd8d23b

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
