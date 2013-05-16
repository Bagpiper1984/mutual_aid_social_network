class SessionsController < ApplicationController
  skip_before_filter :authorize
  
  def new
  end

  def create
    user = User.find_by_login(params[:login])
	if user and user.authenticate(params[:password])
	  session[:user_id] = user.id
	  redirect_to user
	else
	  redirect_to signin_url, alert: "Wrong login/password combination"
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to users_url#, notice: "Сеанс работы завершен"
  end
end
