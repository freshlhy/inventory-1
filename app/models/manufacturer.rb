class Manufacturer < ActiveRecord::Base
  has_many :models
  validates_presence_of :name
end
