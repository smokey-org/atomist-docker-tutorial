FROM node:14-buster-slim@sha256:64878c6bf937bc918cdae0356b20c88f1bd9b2ff4be2ea776fedc34b3b589b22

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
