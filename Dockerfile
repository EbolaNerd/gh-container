FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS firstcluster.danzwdj.mongodb.net
ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD Enternow1337

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]