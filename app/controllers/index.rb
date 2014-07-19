get '/' do
	@movies = Movie.all
	@top_comments = Comment.all.order(vote_count: :desc).limit(5)
	p @top_comments.count
  erb :index
end

get '/movies/:id' do 
	@movie = Movie.find(params[:id])
	erb :each_movie
end


