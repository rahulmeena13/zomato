module RestaurantsHelper
  def show_rating(restaurant)
    if restaurant.get_average_rating > 0
      "#{restaurant.get_average_rating}/5 ( #{restaurant.ratings_count} votes)"
    else
     'Not yet rated'
    end
  end

  def ratings_options
    [["1.0", 10], ["1.5", 15], ["2.0", 20], ["2.5", 25], ["3.0", 30], ["3.5", 35], ["4.0", 40], ["4.5", 45], ["5.0",50]]
  end
end
