Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get '/list', to: 'pages#list'
end
