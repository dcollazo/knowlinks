class Link < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  has_attached_file :link_image, :styles => { :main => "150x150" }
end