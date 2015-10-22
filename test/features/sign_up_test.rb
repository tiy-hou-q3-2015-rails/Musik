require "test_helper"

class SignUpTest < Capybara::Rails::TestCase
  scenario "has content", js: true do
    visit sign_in_path
    click_link 'Create an account'

    fill_in 'First Name', with: 'Nancy'
    fill_in 'Last Name', with: 'Pevato'
    fill_in 'Username', with: 'trollmaster'
    fill_in 'Email', with: 'nancy.pevato@gotchabrian.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password Confirmation', with: '12345678'

    click_button 'Sign up'

    page.execute_script('payola/subscriptions/checkout')
    refute_content page, 'Welcome'
  end
end
