class ChangeColumnTypeToTypeCdInProfile < ActiveRecord::Migration
  def change
	  rename_column :profiles, :type, :type_cd
  end
end
