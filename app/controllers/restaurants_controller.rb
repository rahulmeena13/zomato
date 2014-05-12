class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @country = Country.find_by_name(params[:country_name])
    @city = @country.cities.where(name: params[:city_name]).first
  end
end
