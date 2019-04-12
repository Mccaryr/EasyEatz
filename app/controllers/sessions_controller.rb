class SessionsController < ApplicationController
    before_action :current_user, only: [:show]
    def new 
        @user = User.new 
    end 

    # def create 
    #     @user = User.find_or_create_by(user_params)
    #     if @user && @user.authenticate(params[:password])
    #         session[:user_id] = @user.id 
    #         redirect_to user_path(@user)
    #     else 
    #         redirect_to signin_path 
    #     end 
    # end


    def create
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
          u.email = auth['info']['email']
          u.password = SecureRandom.hex(12)
       
        end
        
        session[:user_id] = @user.id
     
        redirect_to root_path 
    end
    
    def destroy 
        session.delete :user_id 
        redirect_to root_path
    end 

    private 

    def auth
        request.env['omniauth.auth']
      end

    def user_params 
        params.require(:user).permit(:name,:password, :uid, :email, :name)
    end 
end 