Rails.application.routes.draw do
  root 'api#users'
  get 'api/repositories'
  get 'api/index'
  #resources :api
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
