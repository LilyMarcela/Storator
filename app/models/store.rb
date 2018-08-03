class Store < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :orders, :through => :items

  scope  :store_items, -> {Item.where(:store_id => Store.last)}
  #items = Item.all
  #stores = Store.joins(:item).where('item.id IN (?)', items.store_id)

end