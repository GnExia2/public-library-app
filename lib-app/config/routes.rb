Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'users#index'

  #users routes
    get '/users/new', to: 'users#new', as: 'new_user'
    post '/users', to: 'users#create'
    get '/users/:id', to: 'users#show', as: 'user'

  #login routes
    get '/login', to: 'sessions#new'
    get '/logout', to: 'sessions#destroy'
    post '/sessions', to: 'sessions#create'
end
