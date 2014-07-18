get '/' do
 	i = Imdb::Movie.new("0119177")
 	@movie_synopsis = i.plot_synopsis
 	@each_line_array = []
 	
 	@movie_synopsis.split(".").each do |line|
 		@each_line_array << line
 	end

 	@each_line_array

  erb :index
end
