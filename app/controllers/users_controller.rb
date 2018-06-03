class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages.join ", "
      render 'new'
    end
  end

  def show
    if logged_in?
      @user = current_user
    else
      redirect_to login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:login_name, :email, :password, :password_confirmation)
  end

end
