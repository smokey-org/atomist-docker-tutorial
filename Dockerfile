FROM node:14-buster-slim@sha256:f573225f6646b0ddc33e833e31f2bb7c7695e260c60fe23088ca084426cb81fc

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
