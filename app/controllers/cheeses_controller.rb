class CheesesController < ApplicationController
    def index
        cheeses = Cheese.all
        render json: cheeses
    end
    def show
        cheese = Cheese.find(params[:id])
        render json: cheese
    end
    def create
        cheese = Cheese.create(cheese_params)
        render json: cheese
    end
    def update
        cheese = Cheese.find(params[:id])
        cheese.update(cheese_params)
        render json: cheese
    end
    def destroy
        cheese = Cheese.find(params[:id])
        cheese.destroy
        render json: cheese
    end
    # private
    # def cheese_params
    #     params.permit(:name, :price, :image_url)
    # end
end
