class Item < ActiveRecord::Base
  attr_accessible :title, :description, :completed, :project_id 
  
  validates :title, :description, :presence => true 
  validates :completed, :inclusion => {:in => [true, false]}
  
  belongs_to :project
end
