Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'dresses', to: 'dresses#index'
  # get 'dresses/new', to: 'dresses#new'
  # get 'dresses', to: 'dresses#create'
  # get 'dresses/:dress_id', to: 'dresses#show', as: :dress
  resources :dresses
  resources :bookings
end
