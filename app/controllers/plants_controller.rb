class PlantsController < ApplicationController
    wrap_parameters format: []
    def index
        render json: Plant.all, status: :ok
    end

    def show
        render json: Plant.find(params[:id]), status: :ok
    end

    def create
        render json: Plant.create(plant_params), status: :created
    end

    private
    def plant_params
        params.permit(:name, :image, :price)
    end
end
