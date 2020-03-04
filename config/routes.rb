Rails.application.routes.draw do

  # Root
  root 'static_pages#home'

  # Static pages: (assigning var => url)
  get 'help'    =>  'static_pages#help'
  get 'about'   =>  'static_pages#about'
  get 'contact' =>  'static_pages#contact'

  # Users
  resources :users
  get 'signup'  =>  'users#new'

  # Listings
  resources :listings
  get 'listings/search/:query' => 'listings#search'
  get 'listings/listing/:id' => 'listings#listing'

  # Exchanges
  resources :exchanges
  get 'exchanges/new/:id' => 'exchanges#new'

  # Login
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end

# The priority is based upon order of creation: first created -> highest priority.
# See how all your routes lay out with "rake routes".

# You can have the root of your site routed with "root"
# root 'welcome#index'

# Example of regular route:
#   get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with purchase_url(id: product.id)
#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

# Example resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

