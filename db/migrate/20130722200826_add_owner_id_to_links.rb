class AddOwnerIdToLinks < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.integer :owner_id
    end
  end
end
