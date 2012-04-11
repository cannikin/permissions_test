class User < ActiveRecord::Base

  belongs_to :role
  has_many :permissions, :through => :role

  attr_accessible :name, :role_id

  def permission
    output = {}
    permissions = Role.first.permissions.includes(:permission_type)
    permissions.each do |per|
      output.deep_merge!({ per.permission_type.object_type.to_sym => { per.permission_type.klass.to_sym => { per.permission_type.key.to_sym => per.enabled } } })
    end
    output
  end

end
