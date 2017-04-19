class FixProfilePhotoName < ActiveRecord::Migration
  def change
    rename_column :profiles, :photo, :profile_photo
  end
end
