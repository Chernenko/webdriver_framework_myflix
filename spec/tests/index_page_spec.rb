require 'rspec'
require 'selenium-webdriver'
require_relative '../../spec/pages/browser_container'
require_relative '../../spec/pages/site'
require_relative '../../spec/pages/index_page'
require_relative '../../spec/pages/register_page'
include TestHelper

describe 'Index Page' do
  before(:each) do
    @site = Site.new(Selenium::WebDriver.for(:firefox))
  end

  it 'Verify server up and running' do
    page = @site.index_page.navigate_to_app_root
    expect(page.get_page_title).to be == "MyFLiX - a video on demand service"
  end

  it 'Verify pass to sign in' do
    index_page = @site.index_page.navigate_to_app_root
                .go_to_sign_in
                .get_page_title
    expect(index_page).to be == "MyFLiX - a video on demand service"
  end

  it 'Verify pass to sign up' do
    index_page = @site.index_page.navigate_to_app_root
                   .go_to_sign_up
                   .get_page_title
    expect(index_page).to be == "MyFLiX - a video on demand service"
  end

  after(:each) do
    @site.teardown
  end
end