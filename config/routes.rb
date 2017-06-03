Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :nutrition
  resources :supplementation
  resources :workout

  get 'store/index'
  get 'workout/plan'
  get 'workout/exercise'
  get 'workout/program'
  get 'supplementation/guide'
  get 'home_page/main_page'
  get 'nutrition/calorie_calculator'
  get 'nutrition/diet_guide'
  get 'nutrition/recipes'

  resources :products do
    get :who_bought, on: :member
  end
  resources :products
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :models, controllers: {registrations: 'registrations'}

  resources :users
  resources :main_exercises
  resources :workouts do
    resources :exercises

  end
  resources :posts do
    resources :comments
  end
  resources :users do
    resources :workouts
  end

  get 'exercises' => 'main_exercises#index'
  get 'workout_log' => 'workouts#index'
  get 'guide' => 'supplementation#guide'

  # get 'calorie_calculator'  => 'nutrition#calorie_calculator'
  #
  # post 'calorie_calculator'  => 'nutrition#calorie_calculator'

  match 'calorie_calculator' => 'nutrition#calorie_calculator', :via => [:post, :get]



  devise_for :users
  devise_for :models, controllers: {registrations: 'registrations'}

  get 'guide' => 'supplementation#guide'

  get 'calorie_calculator' => 'nutrition#calorie_calculator'

  get 'recipes' => 'nutrition#recipes'

  get 'diet_guide' => 'nutrition#diet_guide'

  get 'plan' => 'workout#plan'

  get 'program' => 'workout#program'

  get 'exercise' => 'workout#exercise'

  get 'home' => 'home_page#main_page'

  get 'contact_us' => 'home_page#contact_us'

  root 'home_page#main_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
