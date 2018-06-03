class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      #do a thing
    else
      flash[:error] = @user.errors.full_messages.join ", "
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:login_name, :email, :password, :password_confirmation)
  end

end
