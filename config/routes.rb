Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/show'
  get 'home_pages/index'
  root 'home_pages#index'
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
