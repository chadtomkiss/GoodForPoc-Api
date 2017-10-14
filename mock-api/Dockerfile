FROM mhart/alpine-node:8
LABEL maintainer Jacky Alcinè <jacky@goodforpocin.tech>

WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install

COPY . ./
RUN npm run build

VOLUME ["/usr/src/app"]

ENTRYPOINT ["npm", "run"]
