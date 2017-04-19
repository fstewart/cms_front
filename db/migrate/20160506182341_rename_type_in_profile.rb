class RenameTypeInProfile < ActiveRecord::Migration
  def change
	  rename_column :profiles, :type_cd, :type
  end
end
