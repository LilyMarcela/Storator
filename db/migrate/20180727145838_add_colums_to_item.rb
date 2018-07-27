class AddColumsToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :description, :text
    add_column :items, :photo, :string
  end
end
