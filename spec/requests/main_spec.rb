require 'rails_helper'

RSpec.describe 'Mains', type: :request do
  describe 'GET /api/v0/main/index' do
    fixtures :sessions, :films, :trailers
    it 'should return json with fixtures information' do
      get api_v0_main_index_path
      resp = File.read('spec/fixtures/responses/index.json')
      expect(response.body == resp)
    end
  end
end
