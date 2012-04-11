class CreatePermissionTypes < ActiveRecord::Migration
  def change
    create_table :permission_types do |t|
      t.string :object_type
      t.string :klass
      t.string :key

      t.timestamps
    end
  end
end
