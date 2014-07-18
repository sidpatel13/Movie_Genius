get '/comment_on_line' do
	# @line = line
	erb :comment_on_line
end

post '/comment_on_line' do
	Comment.create(text: params[:user_comment], line_id: params[:line_id], user_id: session[:user_id])
	redirect '/comment_on_line'
end
