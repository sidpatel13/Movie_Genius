post '/movies/new-title-search/' do
	p params[:title]
	title = params[:title]
	redirect to ("/movies/new-title-search/#{title}")
end

get '/movies/new-title-search/:title' do
	@title = params[:title]
	erb :new_title_search_results
end