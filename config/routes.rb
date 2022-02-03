# frozen_string_literal: true

Rails.application.routes.draw do
  # TODO: Order routes
  root to: 'home#index'

  get '/nosotros', to: 'us#show', as: 'us'
  get '/proveloper', to: 'proveloper#show'
  
  scope constraints: ->(r) { r.env["warden"].user.nil? } do
    get :signup, to: "users#new", as: :signup
    get :login, to: "sessions#new", as: :login
    resources :sessions, only: :create
  end
  delete :sign_out, to: "sessions#destroy", as: :sign_out
  
  resources :events
  resources :users
  resources :creators
  
  namespace :mercadopago do
    resources :success_payments, only: :show
  end
  
  namespace :proveloper do
    resources :events, only: :index
  end
  
  namespace :admin do
    resources :users, only: :index
  end
  
  mount Flipper::UI.app(Flipper) => '/flipper'
end
