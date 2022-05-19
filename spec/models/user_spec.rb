require 'rails_helper'

RSpec.describe 'User', type: :model do
  describe 'User model' do
    it 'is valid with valid attributes' do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end
end