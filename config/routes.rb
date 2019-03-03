Rails.application.routes.draw do
  get 'auth_controller/create'
  namespace :api do
    namespace :v1 do
      resources :countries
      resources :user_countries
      resources :reading_lists
      resources :articles
      resources :users, only: [:create]
          post '/login', to: 'auth#create'
          get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
