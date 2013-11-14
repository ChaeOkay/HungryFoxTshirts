WolfT::Application.routes.draw do
  root to: 'statics#landing'
  get '/about', to: 'statics#about'
end
