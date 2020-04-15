# frozen_string_literal: true

Rails.application.routes.draw do
  resources :add_slug_to_subscriptions
  resources :add_slug_to_publications
  resources :subscriptions
  resources :publications
  root 'articles#index'
  devise_for :users
  resources :comments
  resources :articles
  resources :users, only: %i[index show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
