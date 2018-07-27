class AddColumsToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :slogan, :integer
    add_column :stores, :description, :text
    add_column :stores, :photo, :string
  end
end
