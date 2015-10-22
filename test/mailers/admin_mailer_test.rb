require 'test_helper'

class AdminMailerTest < ActionMailer::TestCase
test "AdminMailer" do

  #send the email, test that it got queued
  email = AdminMailer.daily_update_email.deliver_now
  assert !ActionMailer::Base.deliveries.empty?

  #test that email contains subject we expect it to
  assert_equal "Musik Daily Stats", email.subject

  end
end
