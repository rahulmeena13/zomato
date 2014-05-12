class Review < ActiveRecord::Base
  belongs_to :restaurant, :counter_cache => true
  has_many :ratings

  def get_rating
    self.ratings.first.value.to_f/10
  end
end
