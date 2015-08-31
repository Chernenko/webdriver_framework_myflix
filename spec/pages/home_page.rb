require_relative '../../spec/support/test_helper'

class HomePage < BrowserContainer
  include TestHelper

  def logged?
    @browser.find_element(:id, 'flash_success').text
  end


end