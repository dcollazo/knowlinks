class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.string :tag
      t.text :description
      t.integer :weight

      t.timestamps
    end
  end
end
