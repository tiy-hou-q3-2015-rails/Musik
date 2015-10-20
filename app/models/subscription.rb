class Subscription < ActiveRecord::Base
  belongs_to :user
  include Payola::Plan

  def price_in_dollar
    self.price.to_i / 100.0
  end

  def redirect_path(payola_sale)
    # "/confirmation/#{payola_sale.guid}"
    "/"
  end

end
