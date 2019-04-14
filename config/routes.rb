Rails.application.routes.draw do 
    root 'welcome#home'
    resources :users, only: [:new,:create]

    
    resources :items, only: [:index, :vegetarian]
    resources :orders, only: [:show] do 
        resources :condiments, only: [:new, :create, :show]
    end  

    # get '/condiments/new', to: 'condiments#new'

    resources :order_items, only: [:create, :update, :destroy]

    resources :condiments, only: [:new, :create, :show]

    get '/orders/order_id/condiments', to: 'condiments#show'
   
    get '/items/vegetarian', to: 'items#vegetarian'

    get '/auth/facebook/callback' => 'sessions#create'

    
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy' 
 
end 