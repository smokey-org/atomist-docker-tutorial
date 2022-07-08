FROM node:14-buster-slim@sha256:63217596cc2f5491564f269a21b756b5712eedee907f87e2fe4ce45dea416655

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
