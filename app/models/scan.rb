class Scan < ActiveRecord::Base
  belongs_to :item
  belongs_to :room
  belongs_to :site
  
  #validates_presence_of :room
  
  default_scope order('created_at DESC')
  
  def geo
    if self.latitude.class == Float && self.longitude.class == Float
      [self.latitude, self.longitude].join(", ")
    end
  end
  
  before_create do
    @item = Item.find(self.item_id)
    @item.scans.each do |scan|
      scan.archived = true
      scan.save
    end
  end
  
  after_create do
    # Geo not accurate enough on phone to warrant this
    # @room = Room.find(self.room_id)
    # @room.latitude = self.latitude
    # @room.longitude = self.longitude
    # @room.save
  end

end
