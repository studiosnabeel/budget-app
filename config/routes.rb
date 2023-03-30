Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  resources :categories do
    resources :trans
    # resources :category_trans
  end
  resources :users
  resources :home_page
  # resources :cat_trans
  # resources :trans
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "trans#index"
  devise_scope :user do
        authenticated :user do
               root 'categories#index', as: :authenticated_root
                  end
                  
                  unauthenticated do
                          root 'home_page#index'
                            end
                            end
end
