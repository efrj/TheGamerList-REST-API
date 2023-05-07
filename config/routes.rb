# == Route Map
#

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :softhouses
      resources :platforms_informations
      resources :platforms
      resources :genres
      resources :generations
      resources :games
      resources :contents
      resources :banners
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
