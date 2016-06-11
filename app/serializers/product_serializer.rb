class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount_needed, :amount_in_stock

  attributes :product_type
  # attributes :team


  def product_type
    custom_product_type = {}
    custom_product_type[:id] = object.product_type.id
    custom_product_type[:name] = object.product_type.name

    return custom_product_type
  end

  def team
    custom_team = {}
    custom_team[:id] = object.product_type.team.id
    custom_team[:name] = object.product_type.team.name

    return custom_team
  end
end
