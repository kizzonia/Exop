Rails.application.routes.draw do


  resources :balances


namespace :balance do
  resources :withdraw, only: [:new, :create]
  resources :deposit, only: [:new, :create]
end

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :pages, only: [:show]
  ActiveAdmin.routes(self)
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
