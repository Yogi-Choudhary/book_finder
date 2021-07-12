  Rails.application.routes.draw do
  get 'orders/new'
  resources :order_items
  get 'cart', to: 'cart#show'
  root 'home#index'
  resources :books
  resources :home 
  devise_for :users

  #root to: 'books#index'
  get '/index' => 'books#index'
  get :send_book_mail, to: 'books#send_book_mail', as: :send_book_mail
  #root to: 'books#list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
