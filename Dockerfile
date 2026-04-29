FROM ruby:3.3.6-slim

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential libpq-dev postgresql-client git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /rails

COPY Gemfile ./
RUN bundle install

COPY . .

EXPOSE 3000

ENTRYPOINT ["/bin/bash", "./bin/docker-entrypoint"]
CMD ["ruby", "bin/rails", "server", "-b", "0.0.0.0"]
