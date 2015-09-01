require_relative '../../spec/support/test_helper'

class RegisterPage  < BrowserContainer
  include TestHelper

  def set_new_user(password,user_full_name)
    email = 'lana'+unique_number+'@gmail.com'
    email_input = @browser.find_element(:id, 'user_email')
    email_input.send_keys(email)
      password_input = @browser.find_element(:id, 'user_password')
      password_input.send_keys(password)
      user_full_name_input = @browser.find_element(:id, 'user_full_name')
      user_full_name_input.send_keys(user_full_name)
      submit_button =  @browser.find_element(:id, 'submit')
      submit_button.click
  end
end

