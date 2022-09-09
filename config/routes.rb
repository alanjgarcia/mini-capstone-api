Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
