class CreatePurchaseProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_products do |t|
      t.references :product, index: true, foreign_key: { on_delete: :cascade }
      t.references :purchase, index: true, foreign_key: { on_delete: :cascade }
    end
  end
end
