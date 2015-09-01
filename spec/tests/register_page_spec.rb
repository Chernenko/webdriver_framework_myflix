require 'rspec'
require 'selenium-webdriver'
require_relative '../../spec/pages/browser_container'
require_relative '../../spec/pages/site'
require_relative '../../spec/pages/index_page'
require_relative '../../spec/pages/home_page'
require_relative '../../spec/pages/register_page'
require_relative '../../spec/pages/login_page'
include TestHelper

describe 'Register rPage' do
  before(:each) do
    @site = Site.new(Selenium::WebDriver.for(:firefox))
  end

  it 'verify new user creation' do
    @site.index_page.navigate_to_app_root
           .go_to_sign_up
    @site.register_page.set_new_user('test','Robot # 1')
    redirect_to_sign_in = @site.login_page.is_button_present?
    expect(redirect_to_sign_in).to eq('Sign in')
  end

  after(:each) do
    @site.teardown
  end
end
