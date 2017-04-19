class ChangeTypeInProfile < ActiveRecord::Migration
  def change
	  change_column :profiles, :type, :integer
  end
end
