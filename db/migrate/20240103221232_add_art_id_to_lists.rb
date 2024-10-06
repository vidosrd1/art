class AddArtIdToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :art_id, :integer
  end
end
