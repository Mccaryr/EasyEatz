Rails.application.routes.draw do 

    resources :users, only: [:new,:create]

    root 'users#home'

    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy' 
 
end 