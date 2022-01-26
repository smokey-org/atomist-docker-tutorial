FROM node:14-buster-slim@sha256:02eda24641aca6be1cc5316982f56336b8b793057cadbbf7277fdf8d23bafd35

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
