require_relative '../spec_helper'

RSpec.describe 'Route - Ping ' do
  describe 'GET /ping' do
    before { get '/ping' }

    it 'is successful' do
      expect(last_response.status).to eq 200
    end
  end
end
