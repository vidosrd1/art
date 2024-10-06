class CreateArts < ActiveRecord::Migration[7.1]
  def change
    async_count_by_sql
    create_table :arts do |t|
      t.string :name

      t.timestamps
    end
  end
end
