Rails.application.routes.draw do
  resources :categories
  resources :orders
  root 'orders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
