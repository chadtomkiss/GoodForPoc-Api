# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe 'Route - GraphQL', vcr: true do
  describe 'POST /gql' do
    before do
      VCR.use_cassette('post_gql') do
        post '/gql'
      end
    end

    it 'is successful' do
      expect(last_response.status).to eq 200
    end

    it 'forwards requests to mock API' do
      expect(last_response.status).to eq 200
    end
  end
end
