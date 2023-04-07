FROM ruby:2.7.2-alpine

RUN mkdir app
WORKDIR /app

RUN apk --update --upgrade add \
    postgresql-dev build-base xz-dev \
    libc6-compat yarn imagemagick \
    && rm -rf /var/cache/apk/*
RUN gem install bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY package.json yarn.lock ./
RUN NODE_ENV=production yarn install --check-files

COPY . ./

EXPOSE 3000

CMD rails s -p 3000 -b '0.0.0.0'
