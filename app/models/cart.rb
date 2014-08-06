class Cart < ActiveRecord::Base

  belongs_to :encoder, class_name: User
  belongs_to :customer, class_name: User

  has_many :items, class_name: CartItem, dependent: :destroy
  has_many :products, through: :items

  scope :paid, -> { where(status: 'paid') }
  scope :unpaid, -> { where(status: 'unpaid') }

  def self.paid_carts
    Cart.paid
  end

  def self.unpaid_carts
    Cart.unpaid
  end

end
