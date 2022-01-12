FROM node:14-buster-slim@sha256:9b6ee970369f298b4446ee989a9f2c95fbf948251de5531a47e4f95759bca20a

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
