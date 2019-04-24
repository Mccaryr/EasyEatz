Rails.application.routes.draw do 
    root 'welcome#home'
    resources :users, only: [:new,:create, :show]

    
    resources :items, only: [:index, :vegetarian]
    resources :orders, only: [:show] do 
        resources :condiments, only: [:new, :create, :index, :destroy]
    end  

   

    resources :order_items, only: [:create, :update, :destroy]

    resources :condiments, only: [:new, :create, :show, :destroy]


    #get '/orders/:id/condiments', to: 'condiments#show'
   
    get '/items/vegetarian', to: 'items#vegetarian'

    get '/auth/facebook/callback' => 'sessions#create'

    
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    post '/signinn', to: 'sessions#create_normally'
    post '/logout', to: 'sessions#destroy' 
 
end 