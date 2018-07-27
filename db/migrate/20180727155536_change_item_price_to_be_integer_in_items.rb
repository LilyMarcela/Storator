class ChangeItemPriceToBeIntegerInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :item_price, 'integer USING CAST(item_price AS integer)'
  end
end
