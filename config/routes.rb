Rails.application.routes.draw do
  resources :wikis
	root "home#index"	
  get 'home/index'
  post "home/contact(.:format)", to: "home#contact", as: :contact

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
