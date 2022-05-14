class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :cars, through: :reservations, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def authenticate(provided_password)
    provided_password == password
  end
end
