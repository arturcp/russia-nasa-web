class Purchase < ApplicationRecord
  belongs_to :client
  belongs_to :seller

  has_many :products, class_name: 'PurchaseProduct'
end
