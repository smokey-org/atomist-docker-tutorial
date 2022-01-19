FROM node:14-buster-slim@sha256:46e9da97e7520de3f97ea634ea6f268707fa4244c1d7d001caf0b40ad0515d2d

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
