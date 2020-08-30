Rails.application.routes.draw do
  devise_for :users
  root to: 'products#home'


  resources :products, only: [:index, :show, :update, :new, :create, :destroy]

  resources :orders, only: [:index, :show, :update, :create, :destroy]

  resources :purchases, only: [:index, :update, :create, :destroy]

  resources :productions, only: [:index, :update, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
