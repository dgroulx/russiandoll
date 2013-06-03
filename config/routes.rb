Russiandoll::Application.routes.draw do
  root to: 'dashboards#index'

  resources :comments
  resources :posts
  resources :users
end
