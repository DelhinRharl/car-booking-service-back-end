require 'rails_helper'

describe 'Uer API', type: :request do
  describe 'GET /users' do
    it 'returns users' do
      FactoryBot.create(:user)
      get '/api/v1/users'
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'GET /users/:id' do
    it 'returns a user' do
      user = FactoryBot.create(:user)
      get "/api/v1/users/#{user.id}"
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['name']).to eq(user.name)
    end
  end

  describe 'POST /users' do
    it 'creates a user' do
      expect do
        post '/api/v1/users', params: {
          user: {
            name: 'Charlie',
            email: 'xyz@gmail.com',
            password: '123456',
            admin: false
          }
        }
      end.to change(User, :count).by(1)

      expect(response).to have_http_status(201)
    end
  end

  describe 'PUT /users/:id' do
    it 'updates a user' do
      user = FactoryBot.create(:user)
      put "/api/v1/users/#{user.id}", params: {
        user: {
          name: 'Charlie',
          email: 'xyz@gmail.com',
          password: '123456',
          admin: true
        }
      }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['admin']).to eq(true)
    end
  end

  describe 'DELETE /users/:id' do
    it 'deletes a user' do
      user = FactoryBot.create(:user)
      expect do
        delete "/api/v1/users/#{user.id}"
      end.to change(User, :count).by(-1)
      expect(response).to have_http_status(204)
    end
  end
end
