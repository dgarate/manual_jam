Rails.application.routes.draw do
  get 'users/index'

  resources :stories
  resources :users, only: [:new, :create, :show]
  root 'stories#index'
  resources :sessions, only: [:create, :destroy, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
