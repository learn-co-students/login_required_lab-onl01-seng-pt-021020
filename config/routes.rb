Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/secrets/show', to: 'secrets#show'
end
