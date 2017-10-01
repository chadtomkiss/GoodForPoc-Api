FROM ruby:2.4.1-alpine
LABEL maintainer "Jacky Alcine <jacky@goodforpocin.tech>"

ENV RACK_ENV=production \
    PORT=5000 \
    APP_DIR=/app \
    DATABASE_URL=""

COPY ["Gemfile*", "$APP_DIR/"]
WORKDIR $APP_DIR

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    bundle install --binstubs=bin

COPY . $APP_DIR/
VOLUME ["$APP_DIR/"]
CMD ["bin/puma", "-C", "config/puma.rb"]
