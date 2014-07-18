class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true
  has_many :comments
  # Remember to create a migration!


end
