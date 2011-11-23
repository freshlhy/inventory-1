class Model < ActiveRecord::Base
  belongs_to :manufacturer
  validates_presence_of :name
  validates_associated :manufacturers
end
