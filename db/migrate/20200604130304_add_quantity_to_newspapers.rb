class AddQuantityToNewspapers < ActiveRecord::Migration[6.0]
  def change
    add_column :newspapers, :quantity_2, :string
    add_column :newspapers, :quantity_3, :string
    add_column :newspapers, :quantity_4, :string
  end
end
