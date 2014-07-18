class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :line
  belongs_to :user
end
