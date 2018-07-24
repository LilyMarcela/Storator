class Store < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :transactions, :through => :items
end