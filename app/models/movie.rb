class Movie < ActiveRecord::Base
  # Remember to create a migration!
  has_many :lines
end
