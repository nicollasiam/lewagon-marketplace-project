Rails.application.routes.draw do
  namespace :admin do
    resources :videos
  end

  resources :carts, only: :index

  resources :videos, only: [:index, :show]

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "videos#index"

  patch 'videos/:id', to: 'carts#add'
end
