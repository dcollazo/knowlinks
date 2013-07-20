class CreateLinkBundles < ActiveRecord::Migration
  def change
    create_table :link_bundles do |t|
      t.string :name
      t.text :contents
      t.string :description

      t.timestamps
    end
  end
end
