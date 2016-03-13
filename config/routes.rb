Rails.application.routes.draw do

  resources :listings
  resources :users

  root 'welcome#index'

  get 'listings/search/:query' => 'listings#search'

  get 'users/:id', to:'users#user'

  get 'listings/:id', to:'listings#show'

end
