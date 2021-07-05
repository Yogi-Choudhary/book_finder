  Rails.application.routes.draw do
  root 'home#index'
  resources :books
  resources :home
  devise_for :users

  #root to: 'books#index'
  get '/index' => 'books#index'
  #root to: 'books#list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
