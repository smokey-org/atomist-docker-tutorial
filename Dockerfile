FROM node:14-buster-slim@sha256:f908d216f0f40faeb75f1c7f884ec09141ed7ed306cf12e9bdcc436e14c78ede

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
