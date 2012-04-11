class Permission < ActiveRecord::Base
  belongs_to :role
  belongs_to :permission_type
  attr_accessible :enabled, :role_id, :permission_type_id
end

# { :view => { :vendor => { :index => true, 
#                           :edit => false, 
#                           :destroy => false } } }
