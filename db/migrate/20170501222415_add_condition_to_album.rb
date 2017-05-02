class AddConditionToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :condition_id, :integer
  end
end
