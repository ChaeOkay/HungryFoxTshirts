WolfT::Application.routes.draw do
  root to: 'statics#landing'
  resources :tshirts, only: :index

  get '/feature', to: 'statics#feature'
  get '/about', to: 'statics#about'
end
