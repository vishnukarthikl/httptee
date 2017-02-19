Rails.application.routes.draw do
  root 'tee#index'
  post '/request', to: 'tee#create'
end
