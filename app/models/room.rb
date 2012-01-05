class Room < ActiveRecord::Base
  belongs_to :site
  has_many :scans
  has_many :items, :through => :scans, :uniq => true
  validates_presence_of :name
  validates_associated :site

  default_scope :order => "name"
  
  def distinct_scans
    self.scans.count("DISTINCT(item_id)")
  end

end
