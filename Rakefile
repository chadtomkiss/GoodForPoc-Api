# frozen_string_literal: true

require_relative 'config/environment'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:test)
rescue LoadError
  puts '[rake] RSpec not available in this environment.'
end

require 'sequel/rake'
Sequel::Rake.load!

namespace :db do
  desc "Run the seeds against the database"
  task :seed do
    require 'sequel/extensions/seed'

    Sequel.extension :seed
    Sequel::Seed.setup(ENV['RACK_ENV'].to_sym)
    Sequel::Seeder.apply(DB, "db/seeds")

    puts 'The database was seeded!'
  end
end
