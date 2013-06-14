class Team < ActiveRecord::Base
  attr_accessible :name, :project_ids
  
  has_many :projects
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
end
