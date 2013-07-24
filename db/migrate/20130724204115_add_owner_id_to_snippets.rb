class AddOwnerIdToSnippets < ActiveRecord::Migration
  def change
    change_table :snippets do |t|
      t.integer :owner_id
    end
  end
end
