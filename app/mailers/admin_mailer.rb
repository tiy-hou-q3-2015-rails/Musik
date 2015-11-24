class AdminMailer < ApplicationMailer
  default from: "#{ENV["GMAIL_USERNAME_DEV"]}@gmail.com"

  def daily_update_email
    client = SoundCloudAPI.new
    @top_hunnad = client.hot_tracks(100)

    mail(to: ENV["ADMIN_RECIPIENT_EMAIL"], subject: 'Musik Daily Stats')
  end

  def top_hundred
    @hello = "Hello"
    @client = SoundCloudAPI.new
    @top_hunnad = @client.hot_tracks(100)
  end

end
