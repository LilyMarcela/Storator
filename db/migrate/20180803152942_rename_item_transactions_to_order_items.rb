class RenameItemTransactionsToOrderItems < ActiveRecord::Migration[5.2]
  def change
  	rename_table :item_transactions, :order_items
  end
end
