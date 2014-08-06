class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category
      t.references :supplier
      t.string :name
      t.money :price
      t.timestamps
    end
  end
end
