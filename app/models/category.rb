class Category < ActiveRecord::Base

  has_many :products, foreign_key: :category_id
  has_many :inventories, through: :products

  validates :title, presence: true

end
