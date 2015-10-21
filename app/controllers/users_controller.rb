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
      render :new
    end

  end


  def profile
    @user = User.find params[:id]
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation )
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update params.require(:user).permit(:first_name, :last_name, :username, :email, :title, :information)
      redirect_to profile_path
    else
      render :edit
    end
  end
end
