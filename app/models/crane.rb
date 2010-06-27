class Crane < ActiveRecord::Base
  validates_prescense_of :date, :owner
  
end
