# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe 'Route - Exceptions', vcr: false do
  describe 'GET /an-imaginary-route' do
    before do
      get '/an-imaginary-route'
    end

    it 'is not successful' do
      expect(last_response.status).to eq 404
    end
  end
end
