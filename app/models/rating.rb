class Rating < ActiveRecord::Base
  belongs_to :restaurant, :counter_cache => true
  belongs_to :review
end
