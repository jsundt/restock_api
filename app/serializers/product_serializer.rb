class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount_needed, :amount_in_stock
end
