class Analytics

  def self.monthly_recurring_revenue(subscription_amount)
    subscribers = User.subscribers
    subscribers.size * subscription_amount
  end
end
