Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create]
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  resources :reviews, only: %i[destroy]
end
