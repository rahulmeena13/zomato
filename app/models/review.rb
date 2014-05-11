class Review < ActiveRecord::Base
  belongs_to :restaurant, :counter_cache => true
  has_one :rating
end
