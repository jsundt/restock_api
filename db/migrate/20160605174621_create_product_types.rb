class CreateProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_types do |t|
      t.string :name
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
