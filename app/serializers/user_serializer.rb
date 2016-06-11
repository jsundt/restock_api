class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  attributes :team


  def team
    custom_team = {}
    custom_team[:id] = object.team.id
    custom_team[:name] = object.team.name

    return custom_team
  end
end
