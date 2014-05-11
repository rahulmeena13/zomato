class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.references :restaurant, index: true
      t.references :review, index: true

      t.timestamps
    end
  end
end
