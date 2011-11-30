class Room < ActiveRecord::Base
  belongs_to :site
  has_many :items
  validates_presence_of :name
  validates_associated :site
end
