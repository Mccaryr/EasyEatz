Rails.application.routes.draw do 

    resources :users, only: [:new,:create, :show]
    resources :items, only: [:index]
    resources :orders, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]
    root 'welcome#home'

    get '/auth/facebook/callback' => 'sessions#create'
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy' 
 
end 