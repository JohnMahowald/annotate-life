Rails.application.routes.draw do
  root to: "static_pages#root"
  
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  
  namespace :api, defaults: { format: :json } do 
    resources :journals, only: [:index, :show, :create, :destroy]
    resources :chapters, only: [:show, :create, :update, :destroy]
    resources :stories, only: [:index, :create, :update, :destroy]
  end
end
