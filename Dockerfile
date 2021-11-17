FROM node:14-buster-slim@sha256:5e85e0457af3529a3068302966ff72a6f1943b126d14ab6193610e519fc1e627

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
