class SessionsController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.find_or_create_by(user_params)
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            redirect_to signin_path 
        end 
    end
    
    def destroy 
        session.delete :user_id 
        redirect_to root_path
    end 

    def user_params 
        params.require(:user).permit(:name,:password)
    end 
end 