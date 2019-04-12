class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user
    helper_method :current_user, :logged_in?
    helper_method :current_order 

    def current_order
        binding.pry
        if !session[:order_id].nil? 
            Order.find(session[:order_id])
        else 
            Order.new 
        end 
    end 

    def current_user 
        if logged_in? 
        @user ||= User.find(session[:user_id])
        else 
            
        redirect_to 'welcome#home'
        end  
    end 

    def logged_in?
        session[:user_id]
    end 

    def require_login
        return redirect_to root_path unless logged_in?
    end 
end 