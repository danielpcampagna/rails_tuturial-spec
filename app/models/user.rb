class User < ApplicationModel
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
