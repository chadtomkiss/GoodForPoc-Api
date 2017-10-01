FROM mhart/alpine-node:8
LABEL maintainer Jacky Alcinè <jacky@goodforpocin.tech>

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . ./
RUN npm run build

CMD ["npm", "run", "serve"]
