FROM ruby:3.1.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /dev-journal
WORKDIR /dev-journal

COPY Gemfile /dev-journal/Gemfile
COPY Gemfile.lock /dev-journal/Gemfile.lock

RUN bundle install

COPY . /dev-journal