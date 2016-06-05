class CreateProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_types do |t|
      t.string :name
      t.integer :amount
      t.string :amount_type
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
