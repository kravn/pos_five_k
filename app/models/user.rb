class User < ActiveRecord::Base

  has_many :transactions_recorded, class_name: Cart, foreign_key: :encoder_id
  has_many :transactions_made, class_name: Cart, foreign_key: :customer_id

  validates :first_name, presence: true
  validates :last_name, presence: true

end
