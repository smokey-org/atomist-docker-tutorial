FROM node:14-buster-slim@sha256:e955ff74b2f09b1df1c55ae45673b7f76f125a75e153a1b7e38efe9fd38b125b

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
