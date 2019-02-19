Rails.application.routes.draw do
  resources :user_categories
  resources :categories
  resources :article_categories
  resources :reading_lists
  resources :articles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
