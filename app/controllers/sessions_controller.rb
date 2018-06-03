class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(login_name: params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      log_in user
      redirect_to user
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
