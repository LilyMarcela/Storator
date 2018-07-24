class CreateStore < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.integer :user_id

      t.timestamps
    end
  end
end
