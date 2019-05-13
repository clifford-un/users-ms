FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /users-ms
WORKDIR /users-ms
COPY Gemfile /users-ms/Gemfile
COPY Gemfile.lock /users-ms/Gemfile.lock
RUN bundle install
COPY . /users-ms
