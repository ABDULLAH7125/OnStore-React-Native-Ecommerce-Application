FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

# install expo cli
RUN npm install -g expo-cli

COPY . .

EXPOSE 19006
EXPOSE 8081

CMD ["npx","expo","start","--web"]
