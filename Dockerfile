FROM ruby:2.4.1-alpine
LABEL maintainer "Jacky Alcine <jacky@goodforpocin.tech>"

ENV APP_DIR /app
WORKDIR $APP_DIR

ADD Gemfile* $APP_DIR/
ADD scripts $APP_DIR/scripts

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    $APP_DIR/scripts/build \
    apk del build_deps

ADD . $APP_DIR/
VOLUME ["$APP_DIR/"]

CMD ["bundle", "exec"]
ENTRYPOINT $APP_DIR/scripts/run
