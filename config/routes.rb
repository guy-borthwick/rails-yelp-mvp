Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurants#index'
  # Route for displaying the form to create a new restaurant
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

  # Route for actually creating the restaurant when the form is submitted
  post 'restaurants', to: 'restaurants#create'

  # Route for displaying a specific restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
