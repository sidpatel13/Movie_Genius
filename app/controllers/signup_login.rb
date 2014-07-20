enable :sessions

get '/signup_login' do
  erb :signup_login
end

post '/signup' do

  @new_user = User.create(params[:new_user])
  # MEH - don't understand this line (via Sid)
  if @new_user.save
    session[:user_id] = @new_user.id
    redirect '/'
  else
    redirect '/signup_login'
  end
end

post '/login' do
  @user = User.find_by_username(params[:username])
  p @user
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/signup_login'
  end
end

post '/logout' do
  session[:user_id] = nil
  redirect '/'
end
