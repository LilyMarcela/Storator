class Item < ApplicationRecord
  belongs_to :store
  has_many :item_transactions
  has_many :transactions, :through => :item_transactions
end