class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :store_id
      t.string :item_name
      t.string :item_price

      t.timestamps
    end
  end
end
