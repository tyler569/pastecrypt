class SessionsController < ApplicationController
  def new
    session[:login_return] = request.referrer
  end

  def create
    user = User.find_by(login_name: params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      log_in user
      if session[:login_return] == root_path
        redirect_to profile_path
      else
        redirect_to session[:login_return]
      end
    else
      flash[:danger] = 'Invalid username/password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
