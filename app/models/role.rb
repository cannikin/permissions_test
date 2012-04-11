class Role < ActiveRecord::Base

  has_many :permissions
  has_many :users

  attr_accessible :name

end
