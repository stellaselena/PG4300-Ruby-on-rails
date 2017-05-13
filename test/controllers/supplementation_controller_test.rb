require 'test_helper'

class SupplementationControllerTest < ActionDispatch::IntegrationTest
  test "should get guide" do
    get supplementation_guide_url
    assert_response :success
  end

end
