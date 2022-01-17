require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST /api/v0/users/create' do
    it 'should return ok in create user' do
      params = {
        "user": {
          "name": 'Yury Kizilov',
          "email": 'kizil@mail.ru',
          "password": '123',
          "age": '18'
        }
      }
      post api_v0_user_create_path, params: params
      resp = File.read('spec/fixtures/responses/user/create.json')
      expect(response.body == resp)
    end
  end

  describe 'POST /api/v0/users/auth' do
    fixtures :users
    it 'should check user password' do
      params = {
        "user": {
          "name": 'Yury Kizilov',
          "email": 'ivanov@mail.ru',
          "password": '123',
          "age": '18'
        }
      }
      post api_v0_user_auth_path, params: params
      resp = File.read('spec/fixtures/responses/user/create.json')
      expect(response.body == resp)
    end
  end
end
