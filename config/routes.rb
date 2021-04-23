Rails.application.routes.draw do
  resources :posts
  resources :previews, only: :create
end
