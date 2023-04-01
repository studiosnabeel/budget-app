Rails.application.routes.draw do
  devise_for :users
  
  resources :categories do
    resources :trans
  end
  resources :users
  resources :home_page

  devise_scope :user do
        authenticated :user do
               root 'categories#index', as: :authenticated_root
                  end
                  
                  unauthenticated do
                          root 'home_page#index'
                            end
                            end
end
