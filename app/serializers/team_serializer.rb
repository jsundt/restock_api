class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :users

  # has_many :products
  # has_many :users, serializer: UserTestSerializer
end
