class City < ActiveRecord::Base
  belongs_to :country, :counter_cache => true
  has_many :restaurants
end
