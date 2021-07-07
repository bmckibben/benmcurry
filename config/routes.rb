Rails.application.routes.draw do
  root to: "home#index"
  get "home/home", to: "home#home", as: :home_home
end
