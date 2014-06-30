Rails.application.routes.draw do
  root to: 'leagues#index'

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :bids, only: [:new, :create, :edit, :update, :destroy]
  resources :leagues, only: [:show, :new, :create] do
    resources :teams, only: [:show, :index, :new, :create, :edit, :update]
  end

  resources :memberships, only: [:create, :destroy]
  resources :players, only: [:index, :show]
  resources :users, only: [:show] do
    resources :leagues, only: [:index]
  end
end
