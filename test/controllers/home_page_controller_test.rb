require 'test_helper'

class HomePageControllerTest < ActionDispatch::IntegrationTest
  test 'should get main_page' do
    get home_page_main_page_url
    assert_response :success
  end

end
