class ChangeCartItemPriceType < ActiveRecord::Migration

  def change
    change_column :cart_items, :amount_centavos, :decimal, :precision => 8, :scale => 2
  end

end
