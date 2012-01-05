class Site < ActiveRecord::Base
  has_many :rooms, :dependent => :destroy
  has_many :items
  validates_presence_of :name, :abbreviation
end
