class AddStatusToIconbox < ActiveRecord::Migration
  def change
    add_column :iconboxes, :status, :boolean
  end
end
