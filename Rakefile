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
