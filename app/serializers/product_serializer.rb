class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount_needed, :amount_in_stock

  belongs_to :product_type
  # belongs_to :team
end
