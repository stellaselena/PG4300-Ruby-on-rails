require 'test_helper'

class WorkoutControllerTest < ActionController::TestCase
  test 'should get plan' do
    get :plan
    assert_response :success
  end

  test 'should get program' do
    get :program
    assert_response :success
  end

  test 'should get exercise' do
    get :exercise
    assert_response :success
  end

end
