post '/movies/new-title-search' do
	p params[:title]
	title = params[:title]
	redirect ("/movies/new-title-search/#{title}")
end

get '/movies/new-title-search/:title' do
	@movies = Spotlite::Movie.find(params[:title])

	erb :new_title_search_results
end

# get '/movies/new/:id'