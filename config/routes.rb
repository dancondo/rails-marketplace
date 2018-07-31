Rails.application.routes.draw do
  resources :posts do
    resources :orders, only: [:index, :show, :create]
  end
  devise_for :users
  resources :users, only: :show
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
