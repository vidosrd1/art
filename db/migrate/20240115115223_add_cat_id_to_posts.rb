class AddCatIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :cat_id, :integer
  end
end
