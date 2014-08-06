class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :product
      t.money :price
      t.integer :quantity
      t.timestamps
    end
  end
end
