Rails.application.routes.draw do
  resources :cat_trans
  resources :categories
  resources :users
  resources :trans
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
