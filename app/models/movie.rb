class Movie < ActiveRecord::Base
  # Remember to create a migration!
  has_many :lines

  has_many :comments, through: :lines

  before_save :line_creator


  private

  def line_creator
  	self.synopsis.split(".").each do |line| 
  		self.lines << Line.create(text: line)
  	end
  end


end
