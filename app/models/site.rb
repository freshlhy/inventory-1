class Site < ActiveRecord::Base
  has_many :rooms, :dependent => :destroy
  has_many :scans
  
  has_many :items, :through => :scans, :uniq => true, :conditions => "archived = false"
  validates_presence_of :name, :abbreviation
  validates_format_of :abbreviation, :with => /^[A-Za-z\d_]+$/, :message => "can only be alphanumeric with no spaces"
  
  
  default_scope :order => "name"
  
end
