class Item < ActiveRecord::Base
  belongs_to :model
  has_many :scans, :dependent => :destroy
  
  validates_presence_of :tag
  
  default_scope :order => "tag"
  
  before_save do
    self.serial = self.serial.upcase if self.serial
    self.tag = self.tag.parameterize
    
  end
  
  def to_param
    tag
  end
  
  def most_recent_scan
    self.scans.find(:first, :order => "created_at DESC")
  end
  
end
