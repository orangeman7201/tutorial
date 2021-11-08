Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'
  get '/env', to: 'envs#envstate'
  resources :users
end
