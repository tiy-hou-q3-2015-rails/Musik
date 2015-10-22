class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  before_action do
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user!
    if @current_user.blank?
      redirect_to sign_in_path
    end
  end

  def authenticate_subscription!
    # Determine if subscription exists
    if @current_user.payola_subscription.blank?
      redirect_to new_subscription_path, alert: "Please subscribe"
    else
      # Determine if subscription has expired
      if Time.now > @current_user.payola_subscription.current_period_end
        redirect_to new_subscription_path, alert: "Your subscription has expired"
      end
    end
    # Determine if subscription has expired
    # if Time.now > @current_user.payola_subscription.current_period_end
    #   redirect_to new_subscription_path, alert: "Your subscription has expired"
    # end
  end

  def sign_in user
    session[:user_id] = user.id
  end

  def sign_out user
    session.delete :user_id
  end
end
