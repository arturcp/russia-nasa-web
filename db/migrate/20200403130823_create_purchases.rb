class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :client, index: true, foreign_key: { on_delete: :cascade }
      t.references :seller, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
