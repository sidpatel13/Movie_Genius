class Line < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :movie
  has_many :comments
end
