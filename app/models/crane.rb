class Crane < ActiveRecord::Base
  validates_presence_of :owner
  has_attached_file :pdf, :url => "/:class/:attachment/:id/:style_:basename.:extension"
  validates_attachment_content_type :pdf, :content_type => 'application/pdf'
  
end
