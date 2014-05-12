class Restaurant < ActiveRecord::Base
  belongs_to :city, :counter_cache => true
  has_many :ratings
  has_many :reviews

  def get_average_rating
    self.average_rating/100
  end
end
