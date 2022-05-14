require 'rails_helper'

describe 'Reservation API', type: :request do
  describe 'GET /api/v1/users/user_id/reservations' do
    it 'returns all reservations' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      FactoryBot.create(:reservation, user_id: user.id, car_id: car.id, city: 'Milan')
      get "/api/v1/users/#{user.id}/reservations"
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'GET /api/v1/users/user_id/reservations/:id' do
    it 'returns a reservation' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      reservation = FactoryBot.create(:reservation, user_id: user.id, car_id: car.id, city: 'Milan')
      get "/api/v1/users/#{user.id}/reservations/#{reservation.id}"
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['city']).to eq('Milan')
    end
  end

  describe 'POST /api/v1/users/user_id/reservations' do
    it 'creates a reservation' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      expect do
        post "/api/v1/users/#{user.id}/reservations", params: {
          reservation: {
            city: 'Milan',
            car_id: car.id,
            user_id: user.id
          }
        }
      end.to change(Reservation, :count).by(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'PUT /api/v1/users/user_id/reservations/:id' do
    it 'updates a reservation' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      reservation = FactoryBot.create(:reservation, user_id: user.id, car_id: car.id, city: 'Rome')
      put "/api/v1/users/#{user.id}/reservations/#{reservation.id}", params: {
        reservation: {
          city: 'Milan'
        }
      }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE /api/v1/users/user_id/reservations/:id' do
    it 'deletes a reservation' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      reservation = FactoryBot.create(:reservation, user_id: user.id, car_id: car.id, city: 'Milan')
      expect do
        delete "/api/v1/users/#{user.id}/reservations/#{reservation.id}"
      end.to change(Reservation, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end
  end
end
