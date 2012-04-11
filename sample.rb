output = {}
permissions = Role.first.permissions.includes(:permission_type)
permissions.each do |per|
  output.deep_merge!({ per.permission_type.object_type.to_sym => { per.permission_type.klass.to_sym => { per.permission_type.key.to_sym => per.enabled } } })
end
ap output
