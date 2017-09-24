FROM ruby:2.4.1-alpine
LABEL maintainer "Jacky Alcine <jacky@goodforpocin.tech>"

ARG APP_ENV
ENV APP_DIR /app
WORKDIR $APP_DIR

ADD Gemfile* $APP_DIR/
ADD .bundle/config /usr/local/bundle/config

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    bundle install && \
    apk del build_deps

ADD . $APP_DIR/
VOLUME ["$APP_DIR/", "/usr/local/bundle"]

ENTRYPOINT ["bundle", "exec"]
CMD ["puma", "-C", "config/puma.rb"]
