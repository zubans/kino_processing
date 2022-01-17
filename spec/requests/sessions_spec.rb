require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  fixtures :films
  describe 'POST /api/v0/add_session' do
    it 'should return ok in create session' do
      params = {
        "session": {
          "s_time": '2021-12-25 13:46'
        },
        "film": {
          "id": 1
        }
      }
      post api_v0_add_session_path, params: params
      expect(response.body == '{status: "ok"}')
    end
  end
end
