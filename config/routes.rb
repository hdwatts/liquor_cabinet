Rails.application.routes.draw do
  root 'home#index'
  resources 'users'
  resources 'recipes' do
    resources 'reviews'
  end


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/sort' => 'ajax#get_recipes'
  get '/search' => 'ajax#get_recipes'
  #post '/search' => 'ajax#search'
  get '/tags/:name' => 'tags#show', as: :tag
  get '/ingredients/:name' => 'ingredients#show', as: :ingredient
  post '/recipe/:id/favorite' => 'recipes#favorite', as: :favorite

  get '/age' => 'sessions#age'


end
