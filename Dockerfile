FROM kafkamanager/kafka-manager:latest@sha256:6098a48d0beeaccebb59e36dff66f37bd160e6e1aed9592266b85bc0ed785f68

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
