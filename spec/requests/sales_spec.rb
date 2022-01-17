require 'rails_helper'

RSpec.describe 'Sales', type: :request do
  fixtures :users, :sessions
  describe 'POST /api/v0/sale_ticket' do
    it 'should return ok in create ticket' do
      params = {
        "user": {
          "email": 'sidorov@mail.ru'
        },
        "session": {
          "id": 1
        }
      }
      post api_v0_sale_ticket_path, params: params
      expect(response.body == '{status: "ok"}')
    end
  end
end
