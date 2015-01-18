Rails.application.routes.draw do

  root to: 'sessions#show'
  # get '/auth/twitter/callback' => 'user#login'

  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
  get '/auth/failure', to: 'sessions#error', as: 'failure'
  get '/profile', to: 'sessions#show', as: 'show'
  delete '/signout', to: 'sessions#destroy', as: 'signout'
  get '/request', to: 'request#list', as: 'list'
  post '/request', to: 'request#submit'
  get '/request/thanks', to: 'request#thanks', as:'thanks'

end
