require "test_helper"

class AuthenticateUsersTest < Capybara::Rails::TestCase
  test "User must Sign In before Viewing Root Page" do
    example = User.create! first_name: "example", last_name: "one", username: "example", email: "example@example.com", password: "12345678"
    visit root_path
    assert_content page, "Sign in to get in touch"
  end

  test "User can Sign In" do
    example = User.create! first_name: "example", last_name: "one", username: "example", email: "example@example.com", password: "12345678"
    visit sign_in_path

    fill_in 'email', with: 'example@example.com'
    fill_in 'password', with: '12345678'
    click_button 'Sign in'

    assert_content page, 'notifications'
  end
end
