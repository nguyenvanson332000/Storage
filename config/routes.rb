Rails.application.routes.draw do
  root "static_pages#home"
  get "/home", to: "static_pages#home"
  get "/detail", to: "static_pages#detail"
  get "/order", to: "static_pages#order"
  get "/signup", to: "users#new"
  resources :users, only: %i(new show create)
end
