FROM node:14-buster-slim@sha256:14c99bbf16b8debf93b02f20fb4896a29ef156d0385802000c82ad5ea71fd823

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
