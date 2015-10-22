class AdminMailer < ApplicationMailer
default from: "#{ENV["GMAIL_USERNAME_DEV"]}@gmail.com"

  def daily_update_email

  mail(to: ENV["ADMIN_RECIPIENT_EMAIL"], subject: 'Musik Daily Stats')

  end

end
