class CondimentsController < ApplicationController

    def new 
        @condiment = Condiment.new 
    end 

    def index 
        @condiments = Condiment.all 
    end 
end 