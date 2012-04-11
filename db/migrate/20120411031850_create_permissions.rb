class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :role
      t.references :permission_type
      t.boolean :enabled

      t.timestamps
    end
    add_index :permissions, :role_id
    add_index :permissions, :permission_type_id
  end
end
