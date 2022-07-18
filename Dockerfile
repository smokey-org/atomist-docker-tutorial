FROM node:14-buster-slim@sha256:1eb7895897769e14191447569c29073abe0bbbbfb535289afe754b8f924f116e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
