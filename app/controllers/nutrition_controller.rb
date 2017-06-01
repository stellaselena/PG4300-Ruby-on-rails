class NutritionController < ApplicationController
  def calorie_calculator

    @age = params["age"]
    if @age == ""
      @error_msg = "Please enter your age"
    end
    @height = params["height"]
    if @height == ""
      @error_msg = "Please enter your height"
    end
    @weight = params["weight"]
    if @weight == ""
      @error_msg = "Please enter your weight"
    end

    gender = params["gender"]
    @male = gender == "Male"
    @female = gender == "Female"

    activity = params["activity"]
    @sedentary = activity == "Sedentary"
    @moderate = activity == "Moderate"
    @veryactive = activity == "Very active"

    goal = params["goal"]
    @fatloss = goal == "Fat Loss"
    @maintenance = goal == "Maintenance"
    @musclegains = goal == "Muscle Gains"


    h = @height.to_i
    w = @weight.to_i
    a = @age.to_i
    if (@female)
      @calculate = 655 + (9.6 * w) + (1.8 * h) - (4.7 * a)
      @result = @calculate.to_i
    else
      @calculate = 66 + (13.7 * w) + (5 * h) - (6.8 * a)
      @result = @calculate.to_i
    end

    if (@sedentary)
      @calculate = @calculate * 1.2
      @result = @calculate.to_i
    elsif (@moderate)
      @calculate = @calculate * 1.55
      @result = @calculate.to_i
    else
      @calculate = @calculate * 1.725
      @result = @calculate.to_i
    end

    if (@fatloss)
      @calculate = @calculate - 500
      @result = @calculate.to_i
    elsif (@maintenance)
      @calculate = @calculate
      @result = @calculate.to_i
    else
      @calculate = @calculate + 500
      @result = @calculate.to_i

    end
  end

  def recipes
  end

  def diet_guide

  end


end
