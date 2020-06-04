class CreateMerchantRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :merchant_requests do |t|
      t.string :merchant_type
      t.string :quantity
      t.string :slug

      t.timestamps
    end
    add_index :merchant_requests, :slug, unique: true
  end
end
