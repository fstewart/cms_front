class AddVolunteerismToMandersonProfiles < ActiveRecord::Migration
  def change
    add_column :manderson_profiles, :volunteerism, :text
  end
end
