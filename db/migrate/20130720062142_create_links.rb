class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.string :tag
      t.text :description

      t.timestamps
    end
  end
end
