Rails.application.routes.draw do
  # resources :users
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
