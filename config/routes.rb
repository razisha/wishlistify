Wishlistify::Application.routes.draw do
  get "search", to: "search#index"
  get "user/index"
  root "home#index"
  #get "/auth/:provider", to: "sessions#create"
  resources :users, path: '/wishlist'
  resources :products, :user_products
end
