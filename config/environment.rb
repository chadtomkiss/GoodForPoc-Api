ENV['RACK_ENV'] ||= 'production'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

# Connect to DB
DB = Sequel.connect(ENV['DATABASE_URL'])

# Enable pg_json extension
DB.extension :pg_json

# Enable timestamp plugin
Sequel::Model.plugin :timestamps
