class Restaurant < ActiveRecord::Base
  belongs_to :city, :counter_cache => true
  has_many :ratings
  has_many :reviews
end
