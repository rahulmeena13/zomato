class ReviewsController < ApplicationController
  def add
    restaurant = Restaurant.find(params[:id])
    review = restaurant.reviews.create(params.require(:review).permit(:reviewer, :review_text))

    if review.errors.messages.empty?
      restaurant.ratings.create(params.require(:review).permit(:value).merge(review_id: review.id))
    else
      flash[:error] = 'All fields are mandatory'
    end
    redirect_to restaurant_path(params[:country_name], params[:city_name],params[:id])
  end
end
