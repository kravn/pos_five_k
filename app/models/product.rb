class Product < ActiveRecord::Base

  monetize :price_centavos, allow_nil: false, numericality: { greater_than: 0 }

  belongs_to :supplier
  belongs_to :category

  validates :name, presence: true

  scope :featured_products, -> { where(:is_featured => true) }

end
