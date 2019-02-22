Rails.application.routes.draw do
  resources :user_countries
  resources :countries
  resources :article_countries
  resources :reading_lists
  resources :articles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
