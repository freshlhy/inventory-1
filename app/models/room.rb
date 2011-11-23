class Room < ActiveRecord::Base
  belongs_to :site
  validates_presence_of :name
  validates_associated :site
end
