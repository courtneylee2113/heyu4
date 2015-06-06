Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  devise_scope :user do
    get '/logout',  :to => 'sessions#destroy'
  end

  resources :pins
  resources :pages
  resources :users

end
