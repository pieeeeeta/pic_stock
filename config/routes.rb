Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  devise_for :users
  root 'toppage#index'
  resources :picposts
  resources :users, only: [:index, :show]

  post '/like/:picpost_id', to: 'likes#like', as: 'like'
  delete '/like/:picpost_id', to: 'likes#unlike', as: 'unlike'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
