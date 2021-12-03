# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

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
    resources :preferences, only: :create
    resources :success_payments, only: :show
  end
end
