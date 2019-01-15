Rails.application.routes.draw do

  devise_for :users
  resources :users
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  get 'home_pages/index'
  root 'home_pages#index'
  resources :posts
  resources :categories

  get '/about', :to => 'pages#about'
  get '/contact', :to => 'pages#contact'
  get '/resources', :to => 'pages#resources'
  post 'pages/thank_you'
  get 'pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
