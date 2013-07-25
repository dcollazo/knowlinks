class AddWeightToLinks < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.integer :weight, :default => 1
    end
  end
end
