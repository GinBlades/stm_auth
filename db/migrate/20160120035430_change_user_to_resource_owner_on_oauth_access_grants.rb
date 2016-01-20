class ChangeUserToResourceOwnerOnOauthAccessGrants < ActiveRecord::Migration[5.0]
  def change
    add_column :oauth_access_grants, :resource_owner_id, :integer
    remove_column :oauth_access_grants, :user_id
    change_column :oauth_access_grants, :resource_owner_id, :integer, null: false
  end
end
