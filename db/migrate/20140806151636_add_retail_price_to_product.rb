class AddRetailPriceToProduct < ActiveRecord::Migration
  def change
    add_money :products, :retail_price
  end
end
