class AddCitiesCountToCountry < ActiveRecord::Migration
  def self.up
    add_column :countries, :cities_count, :integer, :default => 0
    Country.reset_column_information
    Country.all.each do |country|
      Country.update_counters country.id, :cities_count => country.cities.length
    end
  end

  def self.down
    remove_column :countries, :cities_count
  end
end
