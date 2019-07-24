Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :new, :add, :show]

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  get "restaurants/:id", to: "restaurants#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
