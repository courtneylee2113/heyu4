Rails.application.routes.draw do
  root 'pages#home'

  resources :pins
  resources :pages
  resources :users

end
