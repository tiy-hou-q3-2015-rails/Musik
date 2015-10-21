  Payola.configure do |config|


  # Example subscription:
  #
  # config.subscribe 'payola.package.sale.finished' do |sale|
  #   EmailSender.send_an_email(sale.email)
  # end
  #

  config.secret_key = ENV['stripe_api_key']
  config.publishable_key = ENV['stripe_publishable_key']


  # payola.default_currency = 'gbp'

  config.subscribe 'payola.subscription.sale.finished' do |sale|
    subscription = sale.production
    subscription.update(completed: true)
  end

  # config.subscribe 'payola.book.sale.failed' do |sale|
  #   SaleMailer.admin_failed(sale.guid).deliver
  # end
  #
  # config.subscribe 'payola.book.sale.refunded' do |sale|
  #   SaleMailer.admin_refunded(sale.guid).deliver
  # end
  # Example subscription:
  #
  # config.subscribe 'payola.package.sale.finished' do |sale|
  #   EmailSender.send_an_email(sale.email)
  # end
  #
  # In addition to any event that Stripe sends, you can subscribe
  # to the following special payola events:
  #
  #  - payola.<sellable class>.sale.finished
  #  - payola.<sellable class>.sale.refunded
  #  - payola.<sellable class>.sale.failed
  #
  # These events consume a Payola::Sale, not a Stripe::Event
  #
  # Example charge verifier:
  #
  # config.charge_verifier = lambda do |sale|
  #   raise "Nope!" if sale.email.includes?('yahoo.com')
  # end

  # Keep this subscription unless you want to disable refund handling
  config.subscribe 'charge.refunded' do |event|
    sale = Payola::Sale.find_by(stripe_id: event.data.object.id)
    sale.refund!
  end
end
