require 'rails_helper'

RSpec.describe 'Car', type: :model do
  describe 'Car model' do
    it 'is valid with valid attributes' do
      expect(FactoryBot.build(:car)).to be_valid
    end
  end
end
