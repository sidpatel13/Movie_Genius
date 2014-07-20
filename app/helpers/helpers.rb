helpers do

  require 'digest/md5'

  def gravatar_hash(email)
    Digest::MD5.hexdigest(email.downcase.strip)
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end

 end
