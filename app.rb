# frozen_string_literal: true
 
require 'sinatra'
require 'sinatra/base'

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

  get '/ping' do
    'pong'
  end
end
