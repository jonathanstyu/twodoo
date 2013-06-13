class Project < ActiveRecord::Base
  attr_accessible :title, :description, :team_id
  
  has_many :items, :inverse_of => :project
  belongs_to :team
  
  validates :title, :description, :presence => true 
  
end
