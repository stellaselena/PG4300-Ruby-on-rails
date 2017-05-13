require 'test_helper'

class NutritionControllerTest < ActionDispatch::IntegrationTest
  test "should get calorie_calculator" do
    get nutrition_calorie_calculator_url
    assert_response :success
  end

  test "should get recipies" do
    get nutrition_recipies_url
    assert_response :success
  end

end
