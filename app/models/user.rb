# password,  password_confirmation = virtual field
class User < ApplicationRecord
  has_secure_password :password
end
