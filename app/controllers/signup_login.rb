enable :sessions

get '/signup_login' do
  erb :signup_login
end

post '/signup' do
  User.create(username: new_user[:username], email: new_user[:email], password: new_user[:password])
end

post '/login' do
  User.find_by(username: user[:username]).try(:authenticate, user[:password])
end
