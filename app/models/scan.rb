class Scan < ActiveRecord::Base
  belongs_to :asset
  belongs_to :room
end
