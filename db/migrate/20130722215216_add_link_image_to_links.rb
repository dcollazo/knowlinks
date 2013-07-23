class AddLinkImageToLinks < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.attachment :link_image
    end
  end
end
