class Inventory < ActiveRecord::Base

  belongs_to :product

  monetize :price_centavos

  validates :quantity, presence: true

  def self.stocks_count(product)
    where(:product_id => product).sum(:quantity)
  end

end
