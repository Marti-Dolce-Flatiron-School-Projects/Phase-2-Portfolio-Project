class CreateRolesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :roles, if_not_exists: true do |t|
      t.string      :role_name
      t.timestamps null: false
    end
  end
end
