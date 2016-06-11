class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name

  attributes :products
  attributes :users


  def products
    customized_products = []

    object.products.each do |product|
      # Assign object attributes (returns a hash)
      # ===========================================================
      custom_product = {}

      # Custom nested and side-loaded attributes
      # ===========================================================
      # belongs_to
      # custom_product[:project] = product.project.slice(:id, :name) # get only :id and :name for the project
      custom_product[:id] = product.id
      custom_product[:name] = product.name
      custom_product[:amount_in_stock] = product.amount_in_stock
      custom_product[:product_type] = product.product_type.name

      # has_many w/only specified attributes
      # custom_product[:proposals] = product.proposals.collect{|proposal| proposal.slice(:id, :name, :updated_at)}

      # ===========================================================
      customized_products.push(custom_product)
    end

    return customized_products
  end

  def users
    user_list = []

    object.users.each do |user|
      u = {}
      u[:id] = user.id
      u[:name] = user.name

      user_list.push(u)
    end

    return user_list
  end
end
