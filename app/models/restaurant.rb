class Restaurant < ActiveRecord::Base
  belongs_to :city, :counter_cache => true
  has_many :ratings
  has_many :reviews

  def get_average_rating
    self.average_rating.to_f/10
  end

  def recalculate_average
    self.average_rating = (self.ratings.sum(:value).to_f/self.ratings.length).to_i
    self.save!
  end
end
