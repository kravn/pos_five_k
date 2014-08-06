class CartItem < ActiveRecord::Base

  belongs_to :cart
  belongs_to :product

  delegate :name, to: :product

  monetize :amount_centavos

  validates_presence_of :cart
  validates_associated :cart

  def self.stocks_sold(product)
    where(:product_id => product).sum(:quantity)
  end

end
