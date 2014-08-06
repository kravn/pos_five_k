class Inventory < ActiveRecord::Base

  belongs_to :product

  monetize :price_centavos

end
