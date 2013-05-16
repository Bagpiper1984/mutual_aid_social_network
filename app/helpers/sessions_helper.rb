module SessionsHelper
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
	#@current_user ||= User.find_by_id(session[:user_id])
  end
  
  def signed_in?
    !current_user.nil?
  end
end
