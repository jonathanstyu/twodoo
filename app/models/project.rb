class Project < ActiveRecord::Base
  attr_accessible :title, :description, :team_id, :items_attributes
  
  has_many :items, :inverse_of => :project
  belongs_to :team
  
  validates :title, :description, :presence => true 
  accepts_nested_attributes_for :items, :reject_if => :empty_title 
  
  def empty_title(attributes)
    attributes['title'].blank?
  end
end
