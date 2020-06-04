class CreateNewspapers < ActiveRecord::Migration[6.0]
  def change
    create_table :newspapers do |t|
      t.string :daily_sun
      t.string :city_press
      t.string :sunday_sun
      t.string :soccer_laduma
      t.string :quantity
      t.string :slug

      t.timestamps
    end
    add_index :newspapers, :slug, unique: true
  end
end
