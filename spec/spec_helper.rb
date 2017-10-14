# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rspec/expectations'
require 'rack/test'
require 'vcr'
require 'webmock/rspec'
require_relative File.join('..', 'app')

require 'simplecov'
SimpleCov.start

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

module AppHelper
  def app
    App.new
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.filter_run_excluding :no_ci if ENV['CI'] != nil
  config.disable_monkey_patching!
  config.warnings = true
  config.default_formatter = 'doc' if config.files_to_run.one?

  config.profile_examples = 5
  config.order = :random
  Kernel.srand config.seed

  config.include Rack::Test::Methods
  config.include AppHelper
end

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.configure_rspec_metadata!
  c.hook_into :webmock
end
