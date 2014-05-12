class ReviewsController < ApplicationController
  def add
    restaurant = Restaurant.find(params[:id])
    review = restaurant.reviews.create(params.require(:review).permit(:reviewer, :review_text))
    restaurant.ratings.create(params.require(:review).permit(:value).merge(review_id: review.id))
    redirect_to restaurant_path(params[:country_name], params[:city_name],params[:id])
  end
end
