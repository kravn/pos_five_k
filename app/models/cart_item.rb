class CartItem < ActiveRecord::Base

  belongs_to :cart
  belongs_to :product

  delegate :name, to: :product

  monetize :amount_centavos

end
