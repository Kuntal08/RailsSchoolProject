Rails.application.routes.draw do

  resources :users
  resources :sessions
  get 'home/index'
  root 'home#index'

  namespace:admin do
    root 'master#index'
    resources :ages
    resources :classes
    resources :fees
    resources :payments
    resources :sections
    resources :students
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
