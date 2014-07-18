get '/' do
 	i = Imdb::Movie.new("0133093")
 	@movie_synopsis = i.plot_synopsis


  erb :index
end
