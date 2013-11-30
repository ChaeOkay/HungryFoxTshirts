WolfT::Application.routes.draw do
  root to: 'statics#landing'
  resources :tshirts, only: :index

  post '/add', to: 'tshirts#add'
  get '/show_stock', to: 'tshirts#show_stock'
  get '/empty', to: 'tshirts#empty'

  get '/feature', to: 'statics#feature'
  get '/about', to: 'statics#about'
  get '/basket', to: 'statics#basket'
  post '/checkoutform', to: 'statics#checkoutform'
end
