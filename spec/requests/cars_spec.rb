require 'rails_helper'

describe 'Car API', type: :request do
  describe 'GET /cars' do
    it 'returns all cars' do
      FactoryBot.create(:car)
      get '/api/v1/cars'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'returns a car' do
      car = FactoryBot.create(:car)
      get "/api/v1/cars/#{car.id}"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['make']).to eq(car.make)
    end
  end

  describe 'POST /cars' do
    it 'creates a car' do
      expect do
        post '/api/v1/cars', params: {
          car: {
            make: 'Lamborghini',
            model: 'Huracan Tecnica',
            year: 2022,
            image: 'https://www.sky-g.org/lamborghini/wp/wp-content/uploads/2022/04/hp_tecnica_00.png',
            price: '7500000',
            description: 'This is a car manufactured by Lamborghini'
          }
        }
      end.to change(Car, :count).by(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'PUT /cars/:id' do
    it 'updates a car' do
      car = FactoryBot.create(:car)
      put "/api/v1/cars/#{car.id}", params: {
        car: {
          make: 'Mercedes',
          model: 'AMG GT',
          year: 2022,
          image: 'https://images.pexels.com/photos/2365572/pexels-photo-2365572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          price: '75000000',
          description: 'This is a car manufactured by Lamborghini'
        }
      }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['make']).to eq('Mercedes')
    end
  end

  describe 'DELETE /cars/:id' do
    it 'deletes a car' do
      car = FactoryBot.create(:car)
      expect do
        delete "/api/v1/cars/#{car.id}"
      end.to change(Car, :count).by(-1)
      expect(response).to have_http_status(200)
    end
  end
end
