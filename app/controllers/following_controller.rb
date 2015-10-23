class FollowingController < ApplicationController

before_action :authenticate_user!
before_action :authenticate_subscription!

def create
    new_user = User.find params[:id]
    @current_user.follow new_user
    redirect_to root_path, notice: "You have followed #{new_user.full_name}"
  end

  def delete
    new_user = User.find params[:id]
    @current_user.stop_following new_user
    redirect_to root_path, notice: "You have stopped following #{new_user.full_name}"

  end


end
