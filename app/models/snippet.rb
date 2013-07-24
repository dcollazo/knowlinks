class Snippet < ActiveRecord::Base
  has_one :snippet_link, :foreign_key => "snippet_id"
  belongs_to :owner, :class_name => "User"
  has_attached_file :link_image, :styles => { :main => "150x150"}

  def unique_url
    returned_url = ""
    2.times do
      returned_url << random_letter
      returned_url << random_number
    end
    returned_url
  end

  def random_letter
    (('A'..'Z').to_a)[rand(22)]
  end

  def random_number
    rand(9).to_s
  end
  
end