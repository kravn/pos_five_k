class ChangeProductPriceType < ActiveRecord::Migration

  def change
    change_column :products, :price_centavos, :decimal, :precision => 8, :scale => 2
    change_column :products, :retail_price_centavos, :decimal, :precision => 8, :scale => 2
  end

end
