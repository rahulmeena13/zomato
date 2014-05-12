module RestaurantsHelper
  def determine_rating(restaurant)
    if restaurant.get_average_rating > 0
      restaurant.get_average_rating +"("+ restaurant.ratings_count + " votes)"
    else
     'Not yet rated'
    end
  end
end
