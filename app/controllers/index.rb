get '/' do
	@movies = Movie.all
  erb :index
end

get '/movies/:id' do
	@movie = Movie.find(params[:id])
	erb :each_movie
end

get '/user/:id' do
  erb :user_profile
end
