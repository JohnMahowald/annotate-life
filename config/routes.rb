Rails.application.routes.draw do
  root to: "static_pages#root"
  
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  
  # TODO: defaults: { format: :json }
  namespace :api do 
    resources :journals, only: [:index, :show, :create, :destroy]
  end
end
