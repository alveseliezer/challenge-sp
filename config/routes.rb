Rails.application.routes.draw do
  get 'api/users'
  get 'api/repositories'
  root 'api#index'
  get '/api/:id', to: 'api#show', as: 'api_show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
