class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  attachment :image
  acts_as_followable
  acts_as_follower

  def full_name
   [last_name, first_name].join(", ")
 end


end
