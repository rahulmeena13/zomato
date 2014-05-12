class Rating < ActiveRecord::Base
  belongs_to :restaurant, :counter_cache => true
  belongs_to :review
  validates :restaurant_id, presence: true
  validates :value, presence: true, :numericality => { :greater_than_or_equal_to => 10, :less_than_or_equal_to => 50 }
  after_create :recalculate_average

  private

  def recalculate_average
    self.restaurant.recalculate_average
  end
end
