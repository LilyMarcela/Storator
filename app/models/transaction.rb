class Transaction < ApplicationRecord
  has_many :item_transactions
  has_many :tems, :through => :item_transactions
  
end