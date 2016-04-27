Rails.application.routes.draw do

  resources :appointments
  devise_for :users

  resources :interactions
  resources :lots
  resources :customers
  resources :users
  get 'dashboard/index'

  root 'dashboard#index'

end
