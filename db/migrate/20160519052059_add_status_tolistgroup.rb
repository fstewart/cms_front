class AddStatusTolistgroup < ActiveRecord::Migration
  def change
    add_column :listgroups, :status, :boolean
  end
end
