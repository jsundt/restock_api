class ProductTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :amount_type

  belongs_to :team
end
