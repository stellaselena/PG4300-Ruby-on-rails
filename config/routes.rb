Rails.application.routes.draw do
  devise_for :users
  devise_for :models, controllers: {registrations: "registrations"}
  get 'guide' => 'supplementation#guide'

  get 'calorie_calculator'  => 'nutrition#calorie_calculator'

  get 'recipes'  => 'nutrition#recipes'

  get 'diet_guide'  => 'nutrition#diet_guide'

  get 'plan'  => 'workout#plan'

  get 'program'  => 'workout#program'

  get 'exercise'  => 'workout#exercise'

  get 'home'  => 'home_page#main_page'

  root 'home_page#main_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
