class Product < ActiveRecord::Base

  belongs_to :supplier
  belongs_to :category

  has_many :inventories
  has_many :cart_items

  validates :name, presence: true
  validates :price_centavos, presence: true
  validates :retail_price_centavos, presence: true

  scope :featured_products, -> { where(:is_featured => true) }
  scope :available, -> {  }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }

  monetize :price_centavos, allow_nil: false, numericality: { greater_than: 0 }

  def self.stocks_on_hand(product)
    Inventory.stocks_count(product) - CartItem.stocks_sold(product)
  end

end
