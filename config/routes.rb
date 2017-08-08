Rails.application.routes.draw do
  namespace :admin do
    resources :videos
  end

  resources :carts, only: :index

  resources :videos

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "videos#index"
end
