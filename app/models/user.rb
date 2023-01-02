# password,  password_confirmation = virtual field
class User < ApplicationRecord
  has_secure_password()
  before_save { |user| user.email = email.downcase }
  validates(:email, uniqueness: { case_sensitive: false }, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" })
  # validates password fields only if new object  creation in db
  if new
    validates(:password, presence: true, length: { in: 6..20 })
    validates(:password_confirmation, presence: true)
  end
end
