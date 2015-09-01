require 'rspec'
require 'selenium-webdriver'
require_relative '../../spec/pages/browser_container'
require_relative '../../spec/pages/site'
require_relative '../../spec/pages/index_page'
require_relative '../../spec/pages/login_page'
require_relative '../../spec/pages/home_page'
include TestHelper

describe 'Login Page' do
  before(:each) do
    @site = Site.new(Selenium::WebDriver.for(:firefox))
  end


context 'with valid credentials' do
  it 'Verify existing  user can login  ' do
    @site.index_page.navigate_to_app_root
                     .go_to_sign_in
    login_page_test = @site.login_page
    login_page_test.login('test@test.com','test')
    home_page  = @site.home_page.logged?
    expect(home_page).to eq("You are signed in, enjoy!")
  end
end
  context 'with invalid credentials' do
    it 'Verify existing  user can login  ' do
      @site.index_page.navigate_to_app_root
          .go_to_sign_in
      login_page_test = @site.login_page
      login_page_test.login('test@test.com','tes')
      test = login_page_test.invalid_credentials?
      expect(test).to eq("Invalid email or password.")
    end
  end

    after(:each) do
    @site.teardown
  end
end

