class User < ApplicationRecord
  has_many :cars
  has_many :cars, through: :reservations

  def authenticate(provided_password)
    provided_password == password
  end
  
end
