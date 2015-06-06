Rails.application.routes.draw do
  root to: 'pages#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'


  # root 'pages#home'

  resources :pins
  resources :pages
  resources :users

end
