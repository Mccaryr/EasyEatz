class ItemsController < ApplicationController

    def index 
        if params[:filter]
            @items = Item.send(params[:filter].downcase)
        else
        @items = Item.all
        end 
        @order_item = current_order.order_items.new
    end 
end 