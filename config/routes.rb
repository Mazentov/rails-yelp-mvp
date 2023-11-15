Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Restaurants routes
  #get "restaurants", to: "restaurants#index"
  #get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  #post "restaurants", to: "restaurants#create"
  #get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # Reviews routes
  #get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_review
  #post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
  resources :restaurants, only: [:index , :create , :new , :show] do
    resources :reviews, only: [ :new , :create]
  end
  resources :reviews, only: [:destroy]

end
