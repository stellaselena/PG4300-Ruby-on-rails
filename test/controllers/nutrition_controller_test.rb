require 'test_helper'

class NutritionControllerTest < ActionController::TestCase

  test 'should get calorie_calculator' do
    get :calorie_calculator
    assert_response :success
  end

  test 'should get recipes' do
    get :recipes
    assert_response :success
  end

  test 'should get diet_guide' do
    get :diet_guide
    assert_response :success
  end

end
