WolfT::Application.routes.draw do
  root to: 'statics#landing'
  resources :tshirts, only: :index

  get '/about', to: 'statics#about'
end
