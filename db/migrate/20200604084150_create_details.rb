class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string :shop_name
      t.string :email
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :address_3

      t.timestamps
    end
  end
end
