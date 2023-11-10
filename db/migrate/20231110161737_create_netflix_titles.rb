class CreateNetflixTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :netflix_titles do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :country
      t.date :published_at
      t.text :description

      t.timestamps
    end
  end
end
