class Inventory < ActiveRecord::Base

  belongs_to :product

  monetize :price_centavos

  def self.stocks_count(product)
    where(:product_id => product).sum(:quantity)
  end

end
