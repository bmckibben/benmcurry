Rails.application.routes.draw do
  get 'score/index'
  get 'scores', to: "score#index", as: :scores
  resources :draws
  devise_for :users
  resources :wikis
  root "home#index"	
  get 'home/index'
  post "home/contact(.:format)", to: "home#contact", as: :contact

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
