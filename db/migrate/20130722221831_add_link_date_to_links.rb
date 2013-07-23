class AddLinkDateToLinks < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.string :month_year
    end
  end
end
