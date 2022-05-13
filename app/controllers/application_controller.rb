class ApplicationController < ActionController::API
  def secret_key
    'TeamSuperCars'
  end

  # Given a payload (user_id: ?) => token
  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  # given a token "abc.123" => payload {user_id: ?}
  def decode(token)
    JWT.decode(token, 'TeamSuperCars', true, { algorithm: 'HS256' })[0]
  end
end
