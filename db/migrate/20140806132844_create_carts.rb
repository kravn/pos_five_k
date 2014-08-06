class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :encoder
      t.references :customer
      t.string :token
      t.string :status, default: 'unpaid'
      t.string :message
      t.timestamps
    end
  end
end
