class Manufacturer < ActiveRecord::Base
  has_many :models
  has_many :items, :through => :models
  validates_presence_of :name
  
  default_scope order('LOWER(name)')
end
