class Scan < ActiveRecord::Base
  belongs_to :item
  belongs_to :room
  belongs_to :site
  validates_presence_of :room
  
  default_scope order('created_at DESC')

end
