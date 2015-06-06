Rails.application.routes.draw do
  devise_for :users, controllers: { 
  	registrations: "users/registrations",
  	sessions: 'users/sessions' 
  	}, :paths => 'users'
  root 'pages#home'

  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  resources :pins
  resources :pages
  resources :users

end
