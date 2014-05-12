class BrowserController < ApplicationController
  before_filter :set_country, except: [:index]
  def index
    @countries = Country.all
  end

  def list_cities
    @cities = @country.cities
  end

  def list_restaurants
    @city = @country.cities.where(name: params[:city_name]).first
    @restaurants = @city.restaurants
  end

  private

  def set_country
    @country = Country.find_by_name(params[:country_name])
  end
end
