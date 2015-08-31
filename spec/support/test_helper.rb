require 'rspec'

module TestHelper
  
  def select_path(element_id, class_name)
    @browser.find_element(:id, element_id).click
    class_name.new($browser)
  end

  def get_page_title
    @browser.title
  end

  def teardown
    @browser.quit
  end

end

