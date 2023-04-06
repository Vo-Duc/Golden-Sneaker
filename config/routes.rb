Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  get "/add_to_cart", to: "pages#add_to_cart"
  post '/add_to_cart/:product_id', to: 'pages#add_to_cart'
end
