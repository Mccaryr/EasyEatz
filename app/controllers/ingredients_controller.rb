class IngredientsController < ApplicationController

    def new 
        @ingredient = Ingredient.new 
    end 

    def index 
        @ingredients = Ingredient.all 
    end 
end 