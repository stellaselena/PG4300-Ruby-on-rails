Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :line_items
  resources :carts
  resources :main_exercises

  resources :products do
    get :who_bought, on: :member
  end
  resources :workouts do
    resources :exercises
  end
  resources :posts do
    resources :comments
  end
  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :models, controllers: {registrations: 'registrations'}

  get 'store/index'
  get 'exercises' => 'main_exercises#index'
  get 'workout_log' => 'workouts#index'
  get 'guide' => 'supplementation#guide'
  get 'guide' => 'supplementation#guide'
  get 'calorie_calculator' => 'nutrition#calorie_calculator'
  get 'recipes' => 'nutrition#recipes'
  get 'diet_guide' => 'nutrition#diet_guide'
  get 'plan' => 'workout#plan'
  get 'program' => 'workout#program'
  get 'exercise' => 'workout#exercise'
  get 'home' => 'home_page#main_page'
  get 'contact_us' => 'home_page#contact_us'
  match 'calorie_calculator' => 'nutrition#calorie_calculator', :via => [:post, :get]
  root 'home_page#main_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
