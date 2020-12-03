class CreateArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :img_url, null: false
      t.integer :artist_id, null: false  # foriegn key

    end
    add_index :artworks, [:artist_id, :title], unique: true
    add_index :artworks, :artist_id
  end
end
