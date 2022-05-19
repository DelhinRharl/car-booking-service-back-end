require 'rails_helper'

RSpec.describe 'Reservation', type: :model do
  describe 'Reservation model' do
    it 'is valid with valid attributes' do
      car = FactoryBot.create(:car)
      user = FactoryBot.create(:user)
      expect(FactoryBot.create(:reservation, user_id: user.id, car_id: car.id, city: 'Milan')).to be_valid
    end
  end
end