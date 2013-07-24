class AddContentToSnippets < ActiveRecord::Migration
  def change
    change_table :snippets do |t|
      t.text :content
    end
  end
end
