class CreateUserPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_permissions do |t|

      t.references  :user, index: true, foreign_key: true
      t.references  :permission, index: true, foreign_key: true

    end
  end
end
