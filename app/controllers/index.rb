get '/' do
	@movies = Movie.all
	@top_comments = Comment.all.order(vote_count: :desc).limit(5)
  erb :index
end

get '/movies/:id' do 
	@movie = Movie.find(params[:id])
	erb :each_movie
end

get '/about_us' do 
  erb :about_us
end


