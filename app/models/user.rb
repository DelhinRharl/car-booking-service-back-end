class User < ApplicationRecord
  has_many :cars
  has_many :cars, through: :reservations
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def authenticate(provided_password)
    provided_password == password
  end
end
