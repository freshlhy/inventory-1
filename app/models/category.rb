class Category < ActiveRecord::Base
  has_many :models, :order => 'name'
  
  default_scope :order => "name"
end
