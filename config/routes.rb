Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "restaurants#index"
  resources :restaurants, only: [ :index, :new, :show, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end
