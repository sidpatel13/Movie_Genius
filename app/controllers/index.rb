get '/' do
 	i = Imdb::Movie.new("0181875")
 	@movie_title = i.plot_synopsis


  erb :index
end
