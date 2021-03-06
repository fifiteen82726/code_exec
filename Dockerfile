FROM ruby:2.5.1
MAINTAINER Chen I Chang <chenicha@buffalo.edu>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

RUN mkdir /CodeExec
WORKDIR /CodeExec

COPY Gemfile /CodeExec/Gemfile
COPY Gemfile.lock /CodeExec/Gemfile.lock
RUN bundle install
COPY . /CodeExec
