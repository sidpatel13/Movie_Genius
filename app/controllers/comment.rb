get '/comment_on_line' do
	@line = line
	erb :comment_on_line
end

post '/comment_on_line' do
	Comment.create(text: params[:content], line: params[:line_id], user: @user.id)
	redirect '/comment_on_line'