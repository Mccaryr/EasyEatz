Rails.application.routes.draw do 

    resources :users, only: [:new,:create, :show]

    root 'users#new'

    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy' 
 
end 