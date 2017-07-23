Rails.application.routes.draw do
  root 'static_pages#index'
  resources :stocks, only: [:index, :new, :create, :destroy]
  namespace :api do
    namespace :v1 do
      resources :stocks, only: [:index, :new, :create]
    end
  end
end
