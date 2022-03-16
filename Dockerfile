FROM ruby:3.1.1-alpine
ENV BUNDLER_VERSION=2.3.8

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      openssl \
      pkgconfig \
      tzdata

run gem install bundler -v 2.3.8

COPY Gemfile Gemfile.lock ./
RUN bundle check || bundle install

COPY . ./ 

ENTRYPOINT ["./docker-entrypoint.sh"]
