class MainExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]
  def index
    @exercise = MainExercise.all.order("created_at DESC")
  end

  def show

  end

  def new
    @exercise = MainExercise.new
  end

  def create
    @exercise = MainExercise.new(exercise_params)

    if @exercise.save
      redirect_to @exercise, notice: "New exercise created"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @exercise.update(exercise_params)
      redirect_to @exercise
    else
      render 'edit'

    end
  end

  def destroy
    @exercise = MainExercise.find(params[:id])
    @exercise.destroy
    redirect_to main_exercises_path, notice: "Exercise deleted"
  end
  private

  def exercise_params
    params.require(:main_exercise).permit(:title, :description, :image, directions_attributes: [:id, :step, :_destroy])

  end

  def find_exercise
    @exercise = MainExercise.find(params[:id])
  end

end
