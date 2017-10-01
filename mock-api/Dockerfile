FROM node:boron
LABEL maintainer Jacky Alcinè <jacky@goodforpocin.tech>

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . ./
CMD ["npm", "serve"]
