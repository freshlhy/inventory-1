class Site < ActiveRecord::Base
  has_many :rooms, :dependent => :destroy
  has_many :scans
  
  has_many :items, :through => :scans, :uniq => true, :conditions => "archived = false"
  validates_presence_of :name, :abbreviation
  
  default_scope :order => "name"
  
end
