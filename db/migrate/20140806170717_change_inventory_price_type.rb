class ChangeInventoryPriceType < ActiveRecord::Migration

  def change
    change_column :inventories, :price_centavos, :decimal, :precision => 8, :scale => 2
  end
  
end
