Rails.application.routes.draw do
  resources :carts, only: :index

  resources :videos, only: [:index, :show]


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
