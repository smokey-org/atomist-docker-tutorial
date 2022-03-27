FROM node:14-buster-slim@sha256:e1f57f0f0899553148411d2376b232d79f19f6333f984f3b39f4e45fdd73ec68

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
