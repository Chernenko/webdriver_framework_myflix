require_relative '../../spec/support/test_helper'
require_relative '../../spec/pages/login_page'
include TestHelper

class IndexPage < BrowserContainer
  URL = 'http://localhost:3000/'

  def navigate_to_app_root
    @browser.navigate.to(URL)
   self
  end

  def go_to_sign_in
   select_path('sign_in', LoginPage)
   self
  end

  def go_to_sign_up
    select_path('sign_up', RegisterPage)
    self
  end
end

#undefined method `login' for #<IndexPage:0x007fbb3ab0dce8>