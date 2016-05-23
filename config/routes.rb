Rails.application.routes.draw do
  root 'home#index'
  resources 'users'
  resources 'recipes'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/recipe/sort' => 'ajax#sort'
  get '/tags/:name' => 'tags#show', as: :tag
  post '/recipe/:id/favorite' => 'recipes#favorite', as: :favorite

end
