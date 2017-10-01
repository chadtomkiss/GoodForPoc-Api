# frozen_string_literal: true

source 'https://rubygems.org'

# Querying language of client
gem 'graphql'

# Web server of choice.
gem 'puma'

# Micro web-framework of choice.
gem 'sinatra'

# Secure secret generation.
gem 'sysrandom'

# Use Postgres.
gem 'pg'

# ORM for Postgres.
gem 'sequel'

# Tasks for Postgres.
gem 'sequel-rake'

# Task runner.
gem 'rake'

# HTTP Client tool.
gem 'httparty'

group :development, optional: true do
  # Extra features for Rack.
  gem 'rack-contrib'
end

group :test, optional: true do
  # Test support for Rack.
  gem 'rack-test'

  # Test runner and framework.
  gem 'rspec'

  # Code style checking.
  gem 'rubocop'

  # Capture HTTP calls.
  gem 'vcr'
end
