get '/comment_on_line/:id' do
	@line = Line.find(params[:id])
	@line.comments
	erb :comment_on_line
end

post '/comment_on_line' do
	comment = Comment.create(text: params[:user_comment], line_id: params[:line_id], user_id: session[:user_id])
	redirect "/comment_on_line/#{comment.line.id}"
end