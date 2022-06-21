Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
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
end
