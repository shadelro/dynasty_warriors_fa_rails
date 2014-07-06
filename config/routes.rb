Rails.application.routes.draw do
  root to: 'leagues#index'

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :bids, only: [:new, :create, :edit, :update, :destroy]
  resources :leagues, only: [:show, :new, :create] do
    resources :teams, only: [:show, :index, :new, :create, :edit, :update]
    resources :invitations, only: [:index, :new, :create]
    resources :players, only: [:index, :show]
  end

  resources :memberships, only: [:create, :destroy]
  resources :users, only: [:show] do
    resources :leagues, only: [:index]
    resources :invitations, only: [:show, :index]
  end
end
