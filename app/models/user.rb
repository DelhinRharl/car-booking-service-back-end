class User < ApplicationRecord
  has_many :cars
  has_many :cars, through: :reservations
end
