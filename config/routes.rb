Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "movies", to: "movies#index"
  get "movies/:id", to: "movies#show", as: :movie

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end
