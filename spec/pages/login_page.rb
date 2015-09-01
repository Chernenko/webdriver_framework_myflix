require_relative '../../spec/support/test_helper'
require 'rspec'
require 'selenium-webdriver'
class LoginPage < BrowserContainer
  include TestHelper

  def login(user_name, password)
    login_input = @browser.find_element(:id, 'email')
    login_input.send_keys(user_name)
    password_input = @browser.find_element(:id, 'password')
    password_input.send_keys(password)
    login_button =  @browser.find_element(:id, 'submit')
    login_button.click
  end

  def invalid_credentials?
    @browser.find_element(:id, 'flash_danger').text
  end
  # method for register page , returning item from sign in page
  # after register
  def is_button_present?
    @browser.find_element(:tag_name, 'h2').text
    end
  end


