class FixTypeName < ActiveRecord::Migration
  def change
    rename_column :profiles, :type, :designation
  end
end
