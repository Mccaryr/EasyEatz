class CondimentsController < ApplicationController

    def new 
        @condiment = Condiment.new(order_id: params[:order_id])
    end 

    def create
        
        @condiment = Condiment.new(condiment_params)
        @condiment.save 
        redirect_to order_path(current_order)
    end

    def show 
        @condiment = Condiment.find(condiment_params) 
    end 

    private 

    def condiment_params
        params.require(:condiment).permit(:name, :order_id)
    end 
end 