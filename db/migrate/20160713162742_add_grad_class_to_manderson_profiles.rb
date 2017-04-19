class AddGradClassToMandersonProfiles < ActiveRecord::Migration
  def change
    add_column :manderson_profiles, :grad_class, :string
  end
end
