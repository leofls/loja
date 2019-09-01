Rails.application.routes.draw do
  root 'product#index'
  
  resources :employees
  resources :customers
  resources :users
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
