desc "This task is called by the Heroku scheduler add-on. It sends our daily update email!"
task :send_email => :environment do
  puts "Sending daily update email to site administrator..."
  AdminMailer.daily_update_email.deliver
  puts "done."
end
