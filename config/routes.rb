Rails.application.routes.draw do
  get 'api/users'
  get 'api/repositories'
  root 'api#index'
  #resources :api
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
