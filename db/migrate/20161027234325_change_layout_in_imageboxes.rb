class ChangeLayoutInImageboxes < ActiveRecord::Migration
  def change
  	change_column :imageboxes, :layout, :integer
  end
end
