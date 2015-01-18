Rails.application.routes.draw do

  root to: 'request#splash'
  get '/auth/twitter' => 'session#show', as:'login'

  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
  get '/auth/failure', to: 'sessions#error', as: 'failure'
  get '/profile', to: 'sessions#show', as: 'show'
  delete '/signout', to: 'sessions#destroy', as: 'signout'
  get '/request', to: 'request#list', as: 'list'
  post '/request', to: 'request#submit', :format => 'json'
  get '/request/list', to: 'request#requests'
  get '/kziel', to: 'request#kziel', :format => 'json'
  # get '/request/thanks', to: 'request#thanks', as:'thanks', :format => 'json'

end
