class PurchaseProduct < ApplicationRecord
  belongs_to :purchase
  belongs_to :product

  def product_name
    product.name
  end

  def seller_name
    purchase.seller.name
  end

  def client_name
    purchase.client.name
  end
end
