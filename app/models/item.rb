class Item < ActiveRecord::Base
  attr_accessible :title, :description, :completed, :project_id 
  
  belongs_to :project
    
  validates :title, :description, :presence => true 
  validates :completed, :inclusion => {:in => [true, false]}
  validates :project, :presence => true 
  

end
