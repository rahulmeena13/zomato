class RatingsController < ApplicationController
  def add
    restaurant = Restaurant.find(params[:id])
    restaurant.ratings.create(params.require(:rating).permit(:value))

    redirect_to restaurant_path(params[:country_name], params[:city_name],params[:id])
  end
end
