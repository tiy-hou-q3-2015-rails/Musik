class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  attachment :image
  acts_as_followable
  acts_as_follower
  belongs_to :subscription

  def full_name
   [last_name, first_name].join(", ")
  end

  def payola_subscription
    Payola::Subscription.find_by owner_type: "User", owner_id: id
  end

  def self.subscribers
    self.where.not(:subscription_id => nil)
  end

end
