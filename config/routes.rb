Rails.application.routes.draw do
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  get 'restaurants/new', to: 'restaurants#new', as: :new
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
