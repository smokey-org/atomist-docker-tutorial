FROM node:14-buster-slim@sha256:b261b0bbd77c77bbb01211e888f16a2c468f2ed07e3ce5bbd1989fdab638a476

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
