FROM ruby:2.4.1-alpine
LABEL maintainer "Jacky Alcine <jacky@goodforpocin.tech>"

ENV RACK_ENV=production \
    PORT=5000 \
    APP_DIR=/app \
    DATABASE_URL=""
WORKDIR $APP_DIR

COPY Gemfile* $APP_DIR/
COPY .bundle/config /usr/local/bundle/config

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    bundle install --deployment

COPY . $APP_DIR/
VOLUME ["$APP_DIR/vendor/"]
ENTRYPOINT ["bundle", "exec"]
CMD ["puma", "-C", "config/puma.rb"]
