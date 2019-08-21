Rails.application.routes.draw do

  namespace :admin do
    resources :restaurants, only: :index
  end

  resources :restaurants do
    get 'top', on: :collection
    get 'chef', on: :member

    resources :reviews, only: [:new, :create, :index]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

  # get  'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
end
