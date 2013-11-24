WolfT::Application.routes.draw do
  root to: 'statics#landing'
  resources :tshirts, only: :index

  get '/add', to: 'tshirts#add'
  get '/show_stock', to: 'tshirts#show_stock'

  get '/feature', to: 'statics#feature'
  get '/about', to: 'statics#about'
  get '/basket', to: 'statics#basket'
end
