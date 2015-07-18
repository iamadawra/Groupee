Rails.application.routes.draw do
  get 'error/error404'

  devise_for :users
  resources :users

  # Errors
  get "error/404"

  match "/404" => "error#error404", via: [ :get, :post, :patch, :delete ]
  root :to => "static#index"
end
