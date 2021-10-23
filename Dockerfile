FROM node:14-buster-slim@sha256:18068a8951797cf22e23490957ff4b293a128cd170ebb88672e4c0b8248fb6ad

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
