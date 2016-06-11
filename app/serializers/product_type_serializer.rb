class ProductTypeSerializer < ActiveModel::Serializer
  attributes :id, :name

  # attributes :team
  attributes :product_list


  def team
    custom_team = {}
    custom_team[:id] = object.team.id
    custom_team[:name] = object.team.name

    return custom_team
  end

  def product_list
    customized_products = []

    object.products.each do |product|
      custom_product = {}
      custom_product[:id] = product.id
      custom_product[:name] = product.name
      custom_product[:amount_in_stock] = product.amount_in_stock

      customized_products.push(custom_product)
    end

    return customized_products
  end
end
