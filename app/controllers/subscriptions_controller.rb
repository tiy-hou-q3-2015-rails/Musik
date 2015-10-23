class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  include Payola::StatusBehavior

  def new
    @plan = Subscription.first
  end

  def create

    binding.pry
    # do any required setup here, including finding or creating the owner object
    owner = @current_user

    # set your plan in the params hash
    params[:plan] = Subscription.find_by(id: params[:plan_id])

    # call Payola::CreateSubscription
    subscription = Payola::CreateSubscription.call(params, owner)

    # Render the status json that Payola's javascript expects
    render_payola_status(subscription)
  end

  def confirmation
    @sale = Payola::Subscription.find_by! guid: params[:sale_guid]
    @subscription = @sale.current_period_end

    #current_user.update current_period_end: current_period_end


  end
end
