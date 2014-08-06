class User < ActiveRecord::Base

  has_many :transactions_recorded, class_name: Cart, foreign_key: :encoder_id
  has_many :transactions_made, class_name: Cart, foreign_key: :customer_id

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }

  scope :named, lambda { |first, last| where(["first_name like ? and last_name like ?", "#{first}%", "#{last}%"]) }
end
