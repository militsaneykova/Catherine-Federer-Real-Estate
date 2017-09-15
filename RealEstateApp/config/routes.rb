Rails.application.routes.draw do
  devise_for :users
  # devise_for :installs
  root 'apartments#index'
  resources :apartments
end
