Rails.application.routes.draw do
  root to: "home#index"
  get "home/home", to: "home#home", as: :home_home
  post "home/contact(.:format)", to: "home#contact", as: :contact
end
