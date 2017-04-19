class AddMandersonPhotoToMandersonProfiles < ActiveRecord::Migration
  def change
    add_column :manderson_profiles, :manderson_profile_photo, :string
    add_column :manderson_profiles, :manderson_profile_cv, :string
  end
end
