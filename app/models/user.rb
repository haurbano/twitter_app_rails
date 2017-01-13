class User < ApplicationRecord
  before_save { self.email = self.email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum:150}, uniqueness: true

  has_secure_password
  validates :password, presence: true, length:{minimum: 6}
end
