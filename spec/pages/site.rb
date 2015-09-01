class Site < BrowserContainer

  def index_page
    @index_page = IndexPage.new(@browser)
  end

  def login_page
    @login_page = LoginPage.new(@browser)
  end

  def home_page
    @home_page = HomePage.new(@browser)
  end

  def register_page
    @register_page = RegisterPage .new(@browser)
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




