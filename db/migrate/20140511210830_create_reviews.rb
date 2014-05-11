class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :review_text
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
