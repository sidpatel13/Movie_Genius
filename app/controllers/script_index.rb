get '/scripts/' do
	@scripts = Script.all
	erb :scripts
end

get '/scripts/:id' do
	@scripts = Script.all
	@script = @scripts.find(params[:id])
	erb :scripts_show
end