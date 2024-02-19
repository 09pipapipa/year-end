Rails.application.routes.draw do
  get 'item/index'
  devise_for :users
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :items do
    collection do
      get 'search'
    end
  end
end
