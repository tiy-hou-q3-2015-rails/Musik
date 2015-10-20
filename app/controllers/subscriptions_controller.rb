class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    #@subscription = Subscription.new params.require(:subscription).permit(:user_id, :amount, :interval, :stripe_id)
  #end

owner = @current_user

params[:plan] = Subscription.find_by(id: params[:plan_id])

subscription = Payola::CreateSubscription.call(params, owner)

render_payola_status(subscription)
  end
end
