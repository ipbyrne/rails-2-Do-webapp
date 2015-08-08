Rails.application.routes.draw do
  devise_for :users
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  
  
  get 'welcome/index'
  
  authenticated :user do
    root "todo_lists#index", as: "authenticated_root"
  end
  
  root "welcome#index"
end
