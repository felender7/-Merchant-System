class AddSlugToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :slug, :string
    add_index :details, :slug, unique: true
  end
end
