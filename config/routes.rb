Rails.application.routes.draw do
  resources :tags
  root 'home#index'
  resources 'users'
  resources 'recipes' do
    resources 'reviews'
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/recipe/sort' => 'ajax#sort'

end
