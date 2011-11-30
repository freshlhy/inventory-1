class Model < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  validates_presence_of :name
  validates_associated :manufacturer
  
  default_scope :include => :category
  default_scope order('category_id, family, name')
  
  def full_name
    [self.family, self.name].join(' ')
  end
end
