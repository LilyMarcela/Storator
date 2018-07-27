class ChangeSloganToBeStringInStores < ActiveRecord::Migration[5.2]
  def change
    change_column :stores, :slogan, :string
  end
end
