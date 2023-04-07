Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'tasks#index'
 
 get 'signup', to: 'users#new'
  resources :users, only: [:create]
 
  resources :tasks
end
