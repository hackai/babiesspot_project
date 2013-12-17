class ChildrenRecord < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :profile
end
