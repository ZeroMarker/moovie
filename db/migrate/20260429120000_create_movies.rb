class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.text :synopsis
      t.integer :release_year, null: false
      t.integer :duration_minutes
      t.string :rating
      t.string :poster_url
      t.boolean :featured, null: false, default: false

      t.timestamps
    end

    add_index :movies, :slug, unique: true
  end
end
