FROM node:14-buster-slim@sha256:ad8006765305e0744a3b83cb05dbee7dbd1b9e2a9263cd40f2a431a57dd6112a

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
