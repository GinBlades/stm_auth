class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :role, :role_id

  def role_id
    User.roles[role]
  end
end
