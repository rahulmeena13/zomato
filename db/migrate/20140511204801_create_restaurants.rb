class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :cuisines
      t.integer :average_rating
      t.integer :cost
      t.integer :ratings_count, :default => 0
      t.integer :reviews_count, :default => 0
      t.references :city, index: true

      t.timestamps
    end
  end
end
