Rails.application.routes.draw do

  root "static_page#home"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/edit", to: "users#edit"
  resources :users
end
