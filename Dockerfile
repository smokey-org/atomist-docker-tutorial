FROM node:14-buster-slim@sha256:b6f411387e431edb820d112a3612e7ea80bdee9e4e6825338e0d750337f9d244

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
