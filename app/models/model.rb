class Model < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category

  has_many :items
  
  validates_presence_of :name
  validates_associated :manufacturer
  validates_associated :category
  
  default_scope :include => :category
  default_scope order('name')
  
  def display_name
    [self.manufacturer.name, self.name].join(' ')
  end
  
end
