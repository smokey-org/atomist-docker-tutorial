FROM node:14-buster-slim@sha256:456f3bb31f4f33e84a528f5148e3cd0a34589359b4c7259fbb7814f308bf2e8d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
