Rails.application.routes.draw do
  devise_for :users
  devise_for :models, controllers: {registrations: "registrations"}
  resources :users
  resources :posts do
    resources :comments
  end
  get 'guide' => 'supplementation#guide'

  # get 'calorie_calculator'  => 'nutrition#calorie_calculator'
  #
  # post 'calorie_calculator'  => 'nutrition#calorie_calculator'

  match 'calorie_calculator' => 'nutrition#calorie_calculator', :via => [:post, :get]

  get 'recipes'  => 'nutrition#recipes'

  get 'diet_guide'  => 'nutrition#diet_guide'

  get 'plan'  => 'workout#plan'

  get 'program'  => 'workout#program'

  get 'exercise'  => 'workout#exercise'

  get 'home'  => 'home_page#main_page'
  #get 'posts' => 'posts#index'
  #get 'sign_out' => 'devise/sessions#destroy'

  get 'contact_us'  => 'home_page#contact_us'



  root 'home_page#main_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
