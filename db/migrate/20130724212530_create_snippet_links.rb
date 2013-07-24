class CreateSnippetLinks < ActiveRecord::Migration
  def change
    create_table :snippet_links do |t|
      t.string :title
      t.integer :snippet_id

      t.timestamps
    end
  end
end
