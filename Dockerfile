FROM node:14-buster-slim@sha256:da61b9916ef50f5bbc4f24a0ade8c900d55a3241565cdd1920a918360c525f66

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
