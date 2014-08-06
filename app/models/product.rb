class Product < ActiveRecord::Base

  belongs_to :supplier
  belongs_to :category

  has_many :inventories
  has_many :cart_items

  validates :name, presence: true

  scope :featured_products, -> { where(:is_featured => true) }
  scope :available, -> {}

  monetize :price_centavos, allow_nil: false, numericality: { greater_than: 0 }

end
