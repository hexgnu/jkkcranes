class Crane < ActiveRecord::Base
  attr_accessor :map
  
  validates_presence_of :owner
  has_attached_file :pdf, :url => "/:class/:attachment/:id/:style_:basename.:extension"
  validates_attachment_content_type :pdf, :content_type => 'application/pdf'
  
  def map

  end
  
  def distance
    
  end
  
end
