class Supplier < ActiveRecord::Base

  has_many :products, foreign_key: :supplier_id

  def inventory_count
    # inventories.available.count
  end

end
