class Seller < ApplicationRecord
  has_many :sales, class_name: 'Purchase'
end
