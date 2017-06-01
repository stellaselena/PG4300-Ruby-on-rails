Rails.application.routes.draw do

  devise_for :users
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'welcome#index'
end
