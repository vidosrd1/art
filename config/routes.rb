Rails.application.routes.draw do
  resources :qr_codes
  draw :madmin
  resources :blogs
  resources :cats
  resources :posts
  resources :tags
  resources :articles
  resources :arts
  devise_for :users
  resources :lists
  get 'home/index'
  get 'home/mts'
  get 'home/goo'
  get 'home/a'
  get 'home/e'
  get 'home/about'
  get "up" => "rails/health#show", as: :rails_health_check
  # root "posts#index"
  #root "lists#index"
  #root "home#about"
  root "home#index"
  #root "qr_codes#index"
  #root "arts#index"
  #root "cats#index"
  #  namespace :admin do
  #      resources :arts
  #      resources :articles
  #      resources :cats
  #      resources :lists
  #      resources :posts
  #      resources :tags
  #      resources :taggables
  #      resources :blogs
  #      resources :users

  #      root to: "arts#index"
  #    end
end
