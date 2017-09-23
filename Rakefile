# frozen_string_literal: true

# TODO: Provide a 'db:seed' command.
# TODO: Provide a 'db:migrate' command.

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:test)
rescue LoadError
  puts '[rake] RSpec not available in this environment.'
end

require 'sequel/rake'
Sequel::Rake.load!
