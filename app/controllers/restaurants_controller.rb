class RestaurantsController < ApplicationController

    def index
        render json: Restaurant.all.to_json(only: [:id, :name, :address]), status: :ok
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, status: :ok
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end
end
