Rails.application.routes.draw do
  get 'prototypes/index'
  root to: 'prototypes#index'
  devise_for :users
  resources :prototypes, only: [:index,:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show  
end
