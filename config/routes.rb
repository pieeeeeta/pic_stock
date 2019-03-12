Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  devise_for :users
  root 'toppage#index'
  resources :picposts
  resources :users, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
