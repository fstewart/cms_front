class RemoveClassFromMandersonProfiles < ActiveRecord::Migration
  def change
    remove_column :manderson_profiles, :class, :string
  end
end
