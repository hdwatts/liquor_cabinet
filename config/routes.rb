Rails.application.routes.draw do
  resources :tags
  root 'home#index'
  resources 'users'
  resources 'recipes'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/recipe/sort' => 'ajax#sort'
  post '/search' => 'ajax#search'
  post '/recipe/:id/favorite' => 'recipes#favorite', as: :favorite


end
