class User < ActiveRecord::Base
  has_many :comments
  # Remember to create a migration!
end
