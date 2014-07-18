enable :sessions

get '/signup_login' do
  erb :signup_login
end

post '/signup' do
  p params
  p params[:new_user]
  @user = User.create(params[:new_user])
  # MEH - don't understand this line (via Sid)
  if @user.save
    # p @user.id
    session[:user_id] = @user.id
    p session
    redirect '/'
  else
    redirect '/signup_login'
  end
end

# post '/login' do
#   User.find_by(username: user[:username]).try(:authenticate, user[:password])
# end
