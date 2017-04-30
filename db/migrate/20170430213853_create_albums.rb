class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :artist

      t.timestamps
    end
  end
end
