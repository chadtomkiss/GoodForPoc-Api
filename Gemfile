# frozen_string_literal: true

source 'https://rubygems.org'

group :http do
  # Querying language of client
  gem 'graphql'

  # Web server of choice.
  gem 'puma'

  # Micro web-framework of choice.
  gem 'sinatra'

  # Secure secret generation.
  gem 'sysrandom'
end

group :data do
  # Use Postgres.
  gem 'pg'

  # ORM for Postgres.
  gem 'sequel'

  # Tasks for Postgres.
  gem 'sequel-rake'
end

group :tasks do
  # Task runner.
  gem 'rake'
end

group :development do
  # Extra features for Rack.
  gem 'rack-contrib'
end

group :test do
  # Test support for Rack.
  gem 'rack-test'

  # Test runner and framework.
  gem 'rspec'

  # Code style checking.
  gem 'rubocop'
end
