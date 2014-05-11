class AddRestaurantsCountToCity < ActiveRecord::Migration
    def self.up
      add_column :cities, :restaurants_count, :integer, :default => 0
    end

    def self.down
      remove_column :cities, :restaurants_count
    end
end
