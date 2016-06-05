class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :amount_needed
      t.integer :amount_in_stock
      t.belongs_to :product_type, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
