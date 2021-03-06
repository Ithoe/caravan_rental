Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :caravans, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :index, :new, :create ]
  end
  resources :bookings, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
