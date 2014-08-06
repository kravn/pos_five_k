class Category < ActiveRecord::Base

  has_many :products, foreign_key: :category_id
  has_many :inventories, through: :products

  def products_count
    # inventories.available.count
  end

end
