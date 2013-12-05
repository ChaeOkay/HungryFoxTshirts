WolfT::Application.routes.draw do
  root to: 'statics#landing'

  resources :tshirts, only: :index
  get '/show_stock', to: 'tshirts#show_stock'

  get '/feature', to: 'statics#feature'
  get '/about', to: 'statics#about'
  get '/basket', to: 'statics#basket'

  post '/add', to: 'baskets#add'
  get '/empty', to: 'baskets#empty'

  post '/checkoutform', to: 'orders#checkoutform'

end
