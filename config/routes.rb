Rails.application.routes.draw do
  root to: "players#index"

  devise_for :users

  resources :bids, only: [:new, :create, :edit, :update, :destroy]
  resources :players, only: [:index, :show]
end
