class Site < ActiveRecord::Base
  has_many :rooms, :dependent => :destroy
  validates_presence_of :name, :abbreviation
end
