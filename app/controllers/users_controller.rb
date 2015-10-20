class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to new_subscription_path, notice: "Please subscribe"
    else
      render:new
    end

  end


  def profile
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name,:username, :email, :password, :password_confirmation )
  end
end
