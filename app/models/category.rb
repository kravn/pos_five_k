class Category < ActiveRecord::Base

  has_many :products, foreign_key: :category_id

  def products_count
    # inventories.available.count
  end

end
