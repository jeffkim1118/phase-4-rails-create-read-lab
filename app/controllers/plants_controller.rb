class PlantsController < ApplicationController
    #Get /plants
    def index
        plants = Plant.all 
        render json: plants
    end

    #Get /plants/:id
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    #Post /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
