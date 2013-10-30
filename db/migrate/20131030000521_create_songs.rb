class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :albumtitle
      t.integer :prodyear
      t.integer :bpm
      t.integer :key

      t.timestamps
    end
  end
end
