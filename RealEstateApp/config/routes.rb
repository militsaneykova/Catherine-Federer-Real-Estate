Rails.application.routes.draw do
  devise_for :users
  # devise_for :installs
  root 'apartments#index'
  resources :apartments
  get 'search_results' => 'apartments#search_results', as: 'search_results'

end
