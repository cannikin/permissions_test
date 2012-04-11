class PermissionType < ActiveRecord::Base
  has_many :permissions
  attr_accessible :object_type, :klass, :key

  PermissionType.inheritance_column = nil
end
