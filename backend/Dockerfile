FROM ruby:2.7.5

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  libpq-dev \
  vim \
  sudo \
  nginx \
  && gem install bundler:2.0.1 \
  && apt-get install nodejs npm -y 

RUN bundle install

CMD ["/app/entrypoint.sh"]
