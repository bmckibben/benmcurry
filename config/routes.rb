Rails.application.routes.draw do
  resources :picks
  get 'score/index'
  get 'scores', to: "score#index", as: :scores
  resources :draws
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :wikis

  root "home#index"	
  get 'home/index'
  post "home/contact(.:format)", to: "home#contact", as: :contact
  get 'maint', to: "home#maint", as: :maint
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 
  get "sections/edit_footnote_modal", to: "sections#edit_footnote_modal", as: :edit_footnote_modal   
  get "sections/notes/:story_id(.:format)", to: "sections#notes", as: :chapter_notes
  get "sections/summaries/:story_id(.:format)", to: "sections#summaries", as: :chapter_summaries
  get "sections/chapters/:story_id(.:format)", to: "sections#chapters", as: :chapters
  get "stories/download_json", to: "stories#download_json", as: :story_download_json
  get "stories/manuscript", to: "stories#manuscript", as: :story_manuscript
  get "sections/workbook/:story_id(.:format)", to: "sections#workbook", as: :workbook
  get "sections/edit_body/:id(.:format)", to: "sections#edit_body", as: :section_edit_body
  get "sections/sample", to: "sections#sample", as: :section_sample
  resources :stories
  resources :sections
  resources :section_notes
end
