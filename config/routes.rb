Rails.application.routes.draw do
  root to: 'leagues#index'

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :leagues, only: [:show, :new, :create] do
    resources :teams, only: [:show, :index, :new, :create, :edit, :update] do
      resources :bids, only: [:new, :create]
    end
    resources :invitations, only: [:index, :new, :create]
    resources :players, only: [:index, :show]
    member do
      post 'start'
      post 'finish'
    end
  end

  resources :memberships, only: :create
  resources :users, only: :none do
    resources :leagues, only: :index
    resources :invitations, only: [:show, :index]
  end
end
