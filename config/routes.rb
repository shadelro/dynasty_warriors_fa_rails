Rails.application.routes.draw do
  root to: 'teams#index'

  devise_for :users

  resources :bids, only: [:new, :create, :edit, :update, :destroy]
  resources :players, only: [:index, :show]
  resources :teams, only: [:show, :index, :new, :create]
  resources :users, only: [:show]
end
