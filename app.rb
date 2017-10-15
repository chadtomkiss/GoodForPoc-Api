# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'production'

require_relative 'config/environment'

class App < Sinatra::Base
  # TODO: Create fixed list of helpers to load.
  # TODO: Define sessions.
  # TODO: Secure sessions by this
  #= begin
  # require 'sysrandom/securerandom'
  # set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
  #= end
  configure :production, :development do
    enable :logging
  end

  enable :cross_origin

  set :allow_origin, :any
  set :allow_methods, [:get, :post, :put, :options]
  set :allow_credentials, true
  set :max_age, 1728000
  set :expose_headers, ['Content-Type']

  get '/ping' do
    'pong'
  end

  get '/gql' do
    mock_graphql_host = ENV.fetch('MOCK_GRAPHQL_SERVER_HOST', 'http://localhost:3000')
    query = params.fetch('query', '')
    route = "#{mock_graphql_host}/graphql?query=#{query}"

    begin
      resp = HTTParty.get(route)
      [resp.code, resp.body]
    rescue => e
      [500, JSON.dump(error: e)]
    end
  end
end
