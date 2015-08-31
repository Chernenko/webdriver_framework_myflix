require 'rspec'
require 'selenium-webdriver'

class BrowserContainer
  def initialize(browser)
    @browser = browser
  end
end