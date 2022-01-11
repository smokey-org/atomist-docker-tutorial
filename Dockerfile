FROM node:14-buster-slim@sha256:96ba4110ce090d8a6ed15d25f65b0f64bd1791024ecff737ba9eda1d40625537

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
