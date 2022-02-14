# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # TODO: Order routes
  root to: 'home#index'

  get '/nosotros', to: 'us#show', as: 'us'
  get '/proveloper', to: 'proveloper#show'

  resources :contacts, only: :create
  resources :events
  resources :users
  resources :creators

  namespace :maker do
    resources :events do
      resource :reviews, only: :show
      resource :publications, only: :show
      resource :returns, only: :show
    end
  end

  namespace :mercadopago do
    resources :success_payments, only: :show
  end

  namespace :proveloper do
    resources :events, only: :index
  end

  namespace :admin do
    resources :users, only: %i[index edit update]
    resources :events, only: :index
  end

  mount Flipper::UI.app(Flipper) => '/flipper'
end
