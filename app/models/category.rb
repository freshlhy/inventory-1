class Category < ActiveRecord::Base
  has_many :models, :order => 'name'
  has_many :items
  
  validates_presence_of :name
  default_scope :order => "name"
  
  
  def count_items
    i = 0
    self.models.each do |model|
      i = i + model.items.count
    end
    count_items = i
  end
end
