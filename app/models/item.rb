class Item < ActiveRecord::Base
  belongs_to :model
  has_many :scans
  
  validates_presence_of :tag
  
  default_scope :order => "tag"
end
