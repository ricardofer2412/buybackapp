Rails.application.routes.draw do
  resources :carriers
  resources :device_models
  resources :buy_backs
  resources :devices
  root 'buy_backs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
