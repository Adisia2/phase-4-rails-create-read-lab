class PlantsController < ApplicationController

    def index
      plant = Plant.all
      render json: plant
    end
  
    def show
      plant = Plant.find(params[:id])
      if plant 
        render json: plant
      else
        render json: { error: "Plant not found" }, status: 404
      end
    end
end
