Rails.application.routes.draw do
  resources :buy_backs
  root 'buy_backs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
