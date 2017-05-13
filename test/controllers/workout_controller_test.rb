require 'test_helper'

class WorkoutControllerTest < ActionDispatch::IntegrationTest
  test "should get plan" do
    get workout_plan_url
    assert_response :success
  end

  test "should get program" do
    get workout_program_url
    assert_response :success
  end

  test "should get exercise" do
    get workout_exercise_url
    assert_response :success
  end

end
