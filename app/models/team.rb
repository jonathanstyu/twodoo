class Team < ActiveRecord::Base
  attr_accessible :name, :project_ids
  
  has_many :projects
end
