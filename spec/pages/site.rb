class Site < BrowserContainer

  def index_page
    @index_page = IndexPage.new(@browser)
  end

  def login_page
    @login_page = LoginPage.new(@browser)
  end
end


  #   select path on app root


  #
  # def teardown
  #   @browser.quit
  # end
  #
  #
  # def go_to(url)
  #   @browser.navigate.to(url)
  # end




