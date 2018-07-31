Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/create'
  resources :posts
  devise_for :users
  resources :users, only: :show
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
