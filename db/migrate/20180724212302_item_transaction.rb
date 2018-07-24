class ItemTransaction < ActiveRecord::Migration[5.2]
  def change
    create_table :item_transactions do |t|
      t.integer :item_id
      t.integer :transaction_id
    end
  end
end
