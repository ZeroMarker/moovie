class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :reviewer_name, null: false
      t.integer :rating, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
