require_relative '../spec_helper'

RSpec.describe 'Route - GraphQL' do
  describe 'GET /gql' do
    before { get '/gql' }

    it 'is successful' do
      expect(last_response.status).to eq 200
    end

    xit 'forwards requests to mock API'
  end
end
