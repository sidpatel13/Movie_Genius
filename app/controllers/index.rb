get '/' do
	@movies = Movie.all
  erb :index
end

get '/parse' do
	i = Imdb::Movie.new("0119177")
 	@movie_synopsis = i.plot_synopsis
 	@each_line_array = []
 	
 	@movie_synopsis.split(".").each do |line|
 		@each_line_array << line
 	end

end
